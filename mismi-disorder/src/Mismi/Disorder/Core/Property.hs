module Mismi.Disorder.Core.Property (
    failWith
  ) where

import           Data.Text (Text, unpack)

import           Test.QuickCheck.Property

failWith :: Text -> Property
failWith =
  flip counterexample False . unpack
