{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AdExchangeBuyer.Internal.Sum
  (

    -- * CreativesListDealsStatusFilter
    CreativesListDealsStatusFilter
      (
        CreativesListDealsStatusFilter_Approved,
        CreativesListDealsStatusFilter_ConditionallyApproved,
        CreativesListDealsStatusFilter_Disapproved,
        CreativesListDealsStatusFilter_NotChecked,
        ..
      ),

    -- * CreativesListOpenAuctionStatusFilter
    CreativesListOpenAuctionStatusFilter
      (
        CreativesListOpenAuctionStatusFilter_Approved,
        CreativesListOpenAuctionStatusFilter_ConditionallyApproved,
        CreativesListOpenAuctionStatusFilter_Disapproved,
        CreativesListOpenAuctionStatusFilter_NotChecked,
        ..
      ),

    -- * ProposalsPatchUpdateAction
    ProposalsPatchUpdateAction
      (
        ProposalsPatchUpdateAction_Accept,
        ProposalsPatchUpdateAction_Cancel,
        ProposalsPatchUpdateAction_Propose,
        ProposalsPatchUpdateAction_ProposeAndAccept,
        ProposalsPatchUpdateAction_UnknownAction,
        ProposalsPatchUpdateAction_UpdateNonTerms,
        ..
      ),

    -- * ProposalsUpdateUpdateAction
    ProposalsUpdateUpdateAction
      (
        ProposalsUpdateUpdateAction_Accept,
        ProposalsUpdateUpdateAction_Cancel,
        ProposalsUpdateUpdateAction_Propose,
        ProposalsUpdateUpdateAction_ProposeAndAccept,
        ProposalsUpdateUpdateAction_UnknownAction,
        ProposalsUpdateUpdateAction_UpdateNonTerms,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | When specified, only creatives having the given deals status are returned.
newtype CreativesListDealsStatusFilter = CreativesListDealsStatusFilter { fromCreativesListDealsStatusFilter :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Creatives which have been approved for serving on deals.
pattern CreativesListDealsStatusFilter_Approved :: CreativesListDealsStatusFilter
pattern CreativesListDealsStatusFilter_Approved = CreativesListDealsStatusFilter "approved"

-- | Creatives which have been conditionally approved for serving on deals.
pattern CreativesListDealsStatusFilter_ConditionallyApproved :: CreativesListDealsStatusFilter
pattern CreativesListDealsStatusFilter_ConditionallyApproved = CreativesListDealsStatusFilter "conditionally_approved"

-- | Creatives which have been disapproved for serving on deals.
pattern CreativesListDealsStatusFilter_Disapproved :: CreativesListDealsStatusFilter
pattern CreativesListDealsStatusFilter_Disapproved = CreativesListDealsStatusFilter "disapproved"

-- | Creatives whose deals status is not yet checked.
pattern CreativesListDealsStatusFilter_NotChecked :: CreativesListDealsStatusFilter
pattern CreativesListDealsStatusFilter_NotChecked = CreativesListDealsStatusFilter "not_checked"

{-# COMPLETE
  CreativesListDealsStatusFilter_Approved,
  CreativesListDealsStatusFilter_ConditionallyApproved,
  CreativesListDealsStatusFilter_Disapproved,
  CreativesListDealsStatusFilter_NotChecked,
  CreativesListDealsStatusFilter #-}

-- | When specified, only creatives having the given open auction status are returned.
newtype CreativesListOpenAuctionStatusFilter = CreativesListOpenAuctionStatusFilter { fromCreativesListOpenAuctionStatusFilter :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Creatives which have been approved for serving on the open auction.
pattern CreativesListOpenAuctionStatusFilter_Approved :: CreativesListOpenAuctionStatusFilter
pattern CreativesListOpenAuctionStatusFilter_Approved = CreativesListOpenAuctionStatusFilter "approved"

-- | Creatives which have been conditionally approved for serving on the open auction.
pattern CreativesListOpenAuctionStatusFilter_ConditionallyApproved :: CreativesListOpenAuctionStatusFilter
pattern CreativesListOpenAuctionStatusFilter_ConditionallyApproved = CreativesListOpenAuctionStatusFilter "conditionally_approved"

-- | Creatives which have been disapproved for serving on the open auction.
pattern CreativesListOpenAuctionStatusFilter_Disapproved :: CreativesListOpenAuctionStatusFilter
pattern CreativesListOpenAuctionStatusFilter_Disapproved = CreativesListOpenAuctionStatusFilter "disapproved"

-- | Creatives whose open auction status is not yet checked.
pattern CreativesListOpenAuctionStatusFilter_NotChecked :: CreativesListOpenAuctionStatusFilter
pattern CreativesListOpenAuctionStatusFilter_NotChecked = CreativesListOpenAuctionStatusFilter "not_checked"

{-# COMPLETE
  CreativesListOpenAuctionStatusFilter_Approved,
  CreativesListOpenAuctionStatusFilter_ConditionallyApproved,
  CreativesListOpenAuctionStatusFilter_Disapproved,
  CreativesListOpenAuctionStatusFilter_NotChecked,
  CreativesListOpenAuctionStatusFilter #-}

-- | The proposed action to take on the proposal. This field is required and it must be set when updating a proposal.
newtype ProposalsPatchUpdateAction = ProposalsPatchUpdateAction { fromProposalsPatchUpdateAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ProposalsPatchUpdateAction_Accept :: ProposalsPatchUpdateAction
pattern ProposalsPatchUpdateAction_Accept = ProposalsPatchUpdateAction "accept"

-- | 
pattern ProposalsPatchUpdateAction_Cancel :: ProposalsPatchUpdateAction
pattern ProposalsPatchUpdateAction_Cancel = ProposalsPatchUpdateAction "cancel"

-- | 
pattern ProposalsPatchUpdateAction_Propose :: ProposalsPatchUpdateAction
pattern ProposalsPatchUpdateAction_Propose = ProposalsPatchUpdateAction "propose"

-- | 
pattern ProposalsPatchUpdateAction_ProposeAndAccept :: ProposalsPatchUpdateAction
pattern ProposalsPatchUpdateAction_ProposeAndAccept = ProposalsPatchUpdateAction "proposeAndAccept"

-- | 
pattern ProposalsPatchUpdateAction_UnknownAction :: ProposalsPatchUpdateAction
pattern ProposalsPatchUpdateAction_UnknownAction = ProposalsPatchUpdateAction "unknownAction"

-- | 
pattern ProposalsPatchUpdateAction_UpdateNonTerms :: ProposalsPatchUpdateAction
pattern ProposalsPatchUpdateAction_UpdateNonTerms = ProposalsPatchUpdateAction "updateNonTerms"

{-# COMPLETE
  ProposalsPatchUpdateAction_Accept,
  ProposalsPatchUpdateAction_Cancel,
  ProposalsPatchUpdateAction_Propose,
  ProposalsPatchUpdateAction_ProposeAndAccept,
  ProposalsPatchUpdateAction_UnknownAction,
  ProposalsPatchUpdateAction_UpdateNonTerms,
  ProposalsPatchUpdateAction #-}

-- | The proposed action to take on the proposal. This field is required and it must be set when updating a proposal.
newtype ProposalsUpdateUpdateAction = ProposalsUpdateUpdateAction { fromProposalsUpdateUpdateAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ProposalsUpdateUpdateAction_Accept :: ProposalsUpdateUpdateAction
pattern ProposalsUpdateUpdateAction_Accept = ProposalsUpdateUpdateAction "accept"

-- | 
pattern ProposalsUpdateUpdateAction_Cancel :: ProposalsUpdateUpdateAction
pattern ProposalsUpdateUpdateAction_Cancel = ProposalsUpdateUpdateAction "cancel"

-- | 
pattern ProposalsUpdateUpdateAction_Propose :: ProposalsUpdateUpdateAction
pattern ProposalsUpdateUpdateAction_Propose = ProposalsUpdateUpdateAction "propose"

-- | 
pattern ProposalsUpdateUpdateAction_ProposeAndAccept :: ProposalsUpdateUpdateAction
pattern ProposalsUpdateUpdateAction_ProposeAndAccept = ProposalsUpdateUpdateAction "proposeAndAccept"

-- | 
pattern ProposalsUpdateUpdateAction_UnknownAction :: ProposalsUpdateUpdateAction
pattern ProposalsUpdateUpdateAction_UnknownAction = ProposalsUpdateUpdateAction "unknownAction"

-- | 
pattern ProposalsUpdateUpdateAction_UpdateNonTerms :: ProposalsUpdateUpdateAction
pattern ProposalsUpdateUpdateAction_UpdateNonTerms = ProposalsUpdateUpdateAction "updateNonTerms"

{-# COMPLETE
  ProposalsUpdateUpdateAction_Accept,
  ProposalsUpdateUpdateAction_Cancel,
  ProposalsUpdateUpdateAction_Propose,
  ProposalsUpdateUpdateAction_ProposeAndAccept,
  ProposalsUpdateUpdateAction_UnknownAction,
  ProposalsUpdateUpdateAction_UpdateNonTerms,
  ProposalsUpdateUpdateAction #-}
