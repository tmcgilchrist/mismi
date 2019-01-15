import           Control.Monad (unless)

import           System.Exit (exitFailure)
import           System.IO (BufferMode(..), hSetBuffering, stdout, stderr)

import qualified Test.Mismi as Mismi

main :: IO ()
main = do
  hSetBuffering stdout LineBuffering
  hSetBuffering stderr LineBuffering

  results <- sequence =<< Mismi.enableTests "AWS_TEST_S3" [
    ] []


  unless (and results) exitFailure
