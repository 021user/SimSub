#pragma once
#include <string>

struct AsrOptions {
    std::string model_path;
    std::string wav_path;
    std::string language = "fr";
    bool translate = false;
    bool detect_language = false;
    int threads = 0; // valeur par défaut
};

struct AsrResult {
    bool ok = false;
    std::string text;
    std::string error;
};

AsrResult asr_transcribe(const AsrOptions& opts);
