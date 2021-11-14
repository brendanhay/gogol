{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ToolResults.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ToolResults.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Which list this API appears on
data NonSdkAPIList
    = None
      -- ^ @NONE@
    | White
      -- ^ @WHITE@
    | Black
      -- ^ @BLACK@
    | Grey
      -- ^ @GREY@
    | GreyMaxO
      -- ^ @GREY_MAX_O@
    | GreyMaxP
      -- ^ @GREY_MAX_P@
    | GreyMaxQ
      -- ^ @GREY_MAX_Q@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NonSdkAPIList

instance FromHttpApiData NonSdkAPIList where
    parseQueryParam = \case
        "NONE" -> Right None
        "WHITE" -> Right White
        "BLACK" -> Right Black
        "GREY" -> Right Grey
        "GREY_MAX_O" -> Right GreyMaxO
        "GREY_MAX_P" -> Right GreyMaxP
        "GREY_MAX_Q" -> Right GreyMaxQ
        x -> Left ("Unable to parse NonSdkAPIList from: " <> x)

instance ToHttpApiData NonSdkAPIList where
    toQueryParam = \case
        None -> "NONE"
        White -> "WHITE"
        Black -> "BLACK"
        Grey -> "GREY"
        GreyMaxO -> "GREY_MAX_O"
        GreyMaxP -> "GREY_MAX_P"
        GreyMaxQ -> "GREY_MAX_Q"

instance FromJSON NonSdkAPIList where
    parseJSON = parseJSONText "NonSdkAPIList"

instance ToJSON NonSdkAPIList where
    toJSON = toJSONText
