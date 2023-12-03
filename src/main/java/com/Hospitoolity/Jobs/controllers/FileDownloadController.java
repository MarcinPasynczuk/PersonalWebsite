package com.Hospitoolity.Jobs.controllers;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
public class FileDownloadController {

    @GetMapping("/downloadCV")
    public ResponseEntity<InputStreamResource> downloadFile() throws IOException {
        var file = new ClassPathResource("MarcinPasynczukCV.pdf");
        var headers = new HttpHeaders();
        headers.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=MarcinPasynczukCVint.pdf");

        return ResponseEntity.ok()
                .headers(headers)
                .contentType(MediaType.APPLICATION_PDF)
                .body(new InputStreamResource(file.getInputStream()));
    }
}