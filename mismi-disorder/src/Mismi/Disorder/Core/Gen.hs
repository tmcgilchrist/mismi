module Mismi.Disorder.Core.Gen (
    genNonEmpty
  ) where

import           Test.QuickCheck.Gen
import           Data.List.NonEmpty (NonEmpty (..))

genNonEmpty :: Gen a -> Gen (NonEmpty a)
genNonEmpty g =
  (:|) <$> g <*> listOf g
