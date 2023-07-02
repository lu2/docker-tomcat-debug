package net.haltuf.playground.webappdockerize;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping(path = "/test", produces = "application/json")
    public String test() {
        return "\"works\"";
    }

}
