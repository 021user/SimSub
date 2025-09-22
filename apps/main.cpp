#include <iostream>
#include "asr.h"

int main() {
    AsrOptions opts;
    opts.model_path = "third_party/whisper.cpp/models/ggml-medium.bin";
    opts.wav_path   = "third_party/whisper.cpp/samples/jfk.wav";
    opts.language   = "fr";

    AsrResult result = asr_transcribe(opts);

    if (!result.ok) {
        std::cerr << "Erreur: " << result.error << std::endl;
        return 1;
    }

    std::cout << "Texte transcrit: " << result.text << std::endl;
    return 0;
}
