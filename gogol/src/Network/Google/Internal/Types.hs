{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- |
-- Module      : Network.Google.Env
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Internal.Types where

import           Data.Data
import           GHC.Generics

-- | An integral value representing seconds.
newtype Seconds = Seconds Int
    deriving
        ( Eq
        , Ord
        , Read
        , Show
        , Enum
        , Num
        , Bounded
        , Integral
        , Real
        , Data
        , Typeable
        , Generic
        )

seconds :: Seconds -> Int
seconds (Seconds n)
    | n < 0     = 0
    | otherwise = n

microseconds :: Seconds -> Int
microseconds =  (1000000 *) . seconds
