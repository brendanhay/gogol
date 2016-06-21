{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeBuyer.Types.Sum where

import           Network.Google.Prelude

-- | When specified, only creatives having the given open auction status are
-- returned.
data CreativesListOpenAuctionStatusFilter
    = Approved
      -- ^ @approved@
      -- Creatives which have been approved for serving on the open auction.
    | ConditionallyApproved
      -- ^ @conditionally_approved@
      -- Creatives which have been conditionally approved for serving on the open
      -- auction.
    | DisApproved
      -- ^ @disapproved@
      -- Creatives which have been disapproved for serving on the open auction.
    | NotChecked
      -- ^ @not_checked@
      -- Creatives whose open auction status is not yet checked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativesListOpenAuctionStatusFilter

instance FromHttpApiData CreativesListOpenAuctionStatusFilter where
    parseQueryParam = \case
        "approved" -> Right Approved
        "conditionally_approved" -> Right ConditionallyApproved
        "disapproved" -> Right DisApproved
        "not_checked" -> Right NotChecked
        x -> Left ("Unable to parse CreativesListOpenAuctionStatusFilter from: " <> x)

instance ToHttpApiData CreativesListOpenAuctionStatusFilter where
    toQueryParam = \case
        Approved -> "approved"
        ConditionallyApproved -> "conditionally_approved"
        DisApproved -> "disapproved"
        NotChecked -> "not_checked"

instance FromJSON CreativesListOpenAuctionStatusFilter where
    parseJSON = parseJSONText "CreativesListOpenAuctionStatusFilter"

instance ToJSON CreativesListOpenAuctionStatusFilter where
    toJSON = toJSONText

-- | The proposed action to take on the proposal.
data ProposalsPatchUpdateAction
    = Accept
      -- ^ @accept@
    | Cancel
      -- ^ @cancel@
    | Propose
      -- ^ @propose@
    | UnknownAction
      -- ^ @unknownAction@
    | UpdateFinalized
      -- ^ @updateFinalized@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProposalsPatchUpdateAction

instance FromHttpApiData ProposalsPatchUpdateAction where
    parseQueryParam = \case
        "accept" -> Right Accept
        "cancel" -> Right Cancel
        "propose" -> Right Propose
        "unknownAction" -> Right UnknownAction
        "updateFinalized" -> Right UpdateFinalized
        x -> Left ("Unable to parse ProposalsPatchUpdateAction from: " <> x)

instance ToHttpApiData ProposalsPatchUpdateAction where
    toQueryParam = \case
        Accept -> "accept"
        Cancel -> "cancel"
        Propose -> "propose"
        UnknownAction -> "unknownAction"
        UpdateFinalized -> "updateFinalized"

instance FromJSON ProposalsPatchUpdateAction where
    parseJSON = parseJSONText "ProposalsPatchUpdateAction"

instance ToJSON ProposalsPatchUpdateAction where
    toJSON = toJSONText

-- | When specified, only creatives having the given deals status are
-- returned.
data CreativesListDealsStatusFilter
    = CLDSFApproved
      -- ^ @approved@
      -- Creatives which have been approved for serving on deals.
    | CLDSFConditionallyApproved
      -- ^ @conditionally_approved@
      -- Creatives which have been conditionally approved for serving on deals.
    | CLDSFDisApproved
      -- ^ @disapproved@
      -- Creatives which have been disapproved for serving on deals.
    | CLDSFNotChecked
      -- ^ @not_checked@
      -- Creatives whose deals status is not yet checked.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CreativesListDealsStatusFilter

instance FromHttpApiData CreativesListDealsStatusFilter where
    parseQueryParam = \case
        "approved" -> Right CLDSFApproved
        "conditionally_approved" -> Right CLDSFConditionallyApproved
        "disapproved" -> Right CLDSFDisApproved
        "not_checked" -> Right CLDSFNotChecked
        x -> Left ("Unable to parse CreativesListDealsStatusFilter from: " <> x)

instance ToHttpApiData CreativesListDealsStatusFilter where
    toQueryParam = \case
        CLDSFApproved -> "approved"
        CLDSFConditionallyApproved -> "conditionally_approved"
        CLDSFDisApproved -> "disapproved"
        CLDSFNotChecked -> "not_checked"

instance FromJSON CreativesListDealsStatusFilter where
    parseJSON = parseJSONText "CreativesListDealsStatusFilter"

instance ToJSON CreativesListDealsStatusFilter where
    toJSON = toJSONText

-- | The proposed action to take on the proposal.
data ProposalsUpdateUpdateAction
    = PUUAAccept
      -- ^ @accept@
    | PUUACancel
      -- ^ @cancel@
    | PUUAPropose
      -- ^ @propose@
    | PUUAUnknownAction
      -- ^ @unknownAction@
    | PUUAUpdateFinalized
      -- ^ @updateFinalized@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProposalsUpdateUpdateAction

instance FromHttpApiData ProposalsUpdateUpdateAction where
    parseQueryParam = \case
        "accept" -> Right PUUAAccept
        "cancel" -> Right PUUACancel
        "propose" -> Right PUUAPropose
        "unknownAction" -> Right PUUAUnknownAction
        "updateFinalized" -> Right PUUAUpdateFinalized
        x -> Left ("Unable to parse ProposalsUpdateUpdateAction from: " <> x)

instance ToHttpApiData ProposalsUpdateUpdateAction where
    toQueryParam = \case
        PUUAAccept -> "accept"
        PUUACancel -> "cancel"
        PUUAPropose -> "propose"
        PUUAUnknownAction -> "unknownAction"
        PUUAUpdateFinalized -> "updateFinalized"

instance FromJSON ProposalsUpdateUpdateAction where
    parseJSON = parseJSONText "ProposalsUpdateUpdateAction"

instance ToJSON ProposalsUpdateUpdateAction where
    toJSON = toJSONText
