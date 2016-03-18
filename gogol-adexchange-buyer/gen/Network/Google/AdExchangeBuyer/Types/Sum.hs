{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesListOpenAuctionStatusFilter

instance FromText CreativesListOpenAuctionStatusFilter where
    fromText = \case
        "approved" -> Just Approved
        "conditionally_approved" -> Just ConditionallyApproved
        "disapproved" -> Just DisApproved
        "not_checked" -> Just NotChecked
        _ -> Nothing

instance ToText CreativesListOpenAuctionStatusFilter where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProposalsPatchUpdateAction

instance FromText ProposalsPatchUpdateAction where
    fromText = \case
        "accept" -> Just Accept
        "cancel" -> Just Cancel
        "propose" -> Just Propose
        "unknownAction" -> Just UnknownAction
        "updateFinalized" -> Just UpdateFinalized
        _ -> Nothing

instance ToText ProposalsPatchUpdateAction where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CreativesListDealsStatusFilter

instance FromText CreativesListDealsStatusFilter where
    fromText = \case
        "approved" -> Just CLDSFApproved
        "conditionally_approved" -> Just CLDSFConditionallyApproved
        "disapproved" -> Just CLDSFDisApproved
        "not_checked" -> Just CLDSFNotChecked
        _ -> Nothing

instance ToText CreativesListDealsStatusFilter where
    toText = \case
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
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ProposalsUpdateUpdateAction

instance FromText ProposalsUpdateUpdateAction where
    fromText = \case
        "accept" -> Just PUUAAccept
        "cancel" -> Just PUUACancel
        "propose" -> Just PUUAPropose
        "unknownAction" -> Just PUUAUnknownAction
        "updateFinalized" -> Just PUUAUpdateFinalized
        _ -> Nothing

instance ToText ProposalsUpdateUpdateAction where
    toText = \case
        PUUAAccept -> "accept"
        PUUACancel -> "cancel"
        PUUAPropose -> "propose"
        PUUAUnknownAction -> "unknownAction"
        PUUAUpdateFinalized -> "updateFinalized"

instance FromJSON ProposalsUpdateUpdateAction where
    parseJSON = parseJSONText "ProposalsUpdateUpdateAction"

instance ToJSON ProposalsUpdateUpdateAction where
    toJSON = toJSONText
