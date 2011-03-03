{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Data.Union.Type (
    Union (..),
    Node (..),
) where

import Data.Array.Unboxed
import Data.Array

-- | An immutable disjoint set forest.
data Union a = Union {
    size  :: !Int,
    up    :: UArray Int Int,
    label :: Array Int a
}

-- | A node in a disjoint set forest.
newtype Node = Node { fromNode :: Int }
    deriving (Eq, Ord, Ix)