#include "asr.h"

#include <iostream>
#include <vector>
#include <stdexcept>

AsrResult asr_transcribe(const AsrOptions& opts) {
  AsrResult result;
  result.ok = true;
  result.text = "Stub transcription with model: " + opts.model_path +
                " on wav: " + opts.wav_path;
  result.error = "";
  return result;
}
