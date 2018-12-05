import           Mismi.Disorder.Core.Main

import           Test.IO.Mismi.EC2.Commands

main :: IO ()
main =
  disorderMain [
      Test.IO.Mismi.EC2.Commands.tests
    ]
