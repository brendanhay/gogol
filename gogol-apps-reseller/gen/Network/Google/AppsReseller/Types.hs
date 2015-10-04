{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsReseller.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsReseller.Types
    (
    -- * Service URL
      appsResellerURL

    -- * CommitmentInterval
    , CommitmentInterval
    , commitmentInterval
    , ciStartTime
    , ciEndTime

    -- * TrialSettings
    , TrialSettings
    , trialSettings
    , tsIsInTrial
    , tsTrialEndTime

    -- * Plan
    , Plan
    , plan
    , pCommitmentInterval
    , pIsCommitmentPlan
    , pPlanName

    -- * Address
    , Address
    , address
    , aOrganizationName
    , aKind
    , aPostalCode
    , aAddressLine1
    , aLocality
    , aContactName
    , aAddressLine2
    , aCountryCode
    , aRegion
    , aAddressLine3

    -- * DeletionType
    , DeletionType (..)

    -- * Customer
    , Customer
    , customer
    , cResourceUiURL
    , cKind
    , cCustomerId
    , cAlternateEmail
    , cCustomerDomain
    , cPhoneNumber
    , cPostalAddress

    -- * ChangePlanRequest
    , ChangePlanRequest
    , changePlanRequest
    , cprKind
    , cprPlanName
    , cprPurchaseOrderId
    , cprSeats

    -- * TransferInfo
    , TransferInfo
    , transferInfo
    , tiTransferabilityExpirationTime
    , tiMinimumTransferableSeats

    -- * Seats
    , Seats
    , seats
    , sNumberOfSeats
    , sMaximumNumberOfSeats
    , sLicensedNumberOfSeats
    , sKind

    -- * Subscriptions
    , Subscriptions
    , subscriptions
    , subNextPageToken
    , subKind
    , subSubscriptions

    -- * Subscription
    , Subscription
    , subscription
    , subuCreationTime
    , subuBillingMethod
    , subuStatus
    , subuTrialSettings
    , subuResourceUiURL
    , subuKind
    , subuSKUId
    , subuPlan
    , subuCustomerId
    , subuSuspensionReasons
    , subuTransferInfo
    , subuPurchaseOrderId
    , subuSeats
    , subuRenewalSettings
    , subuSubscriptionId

    -- * RenewalSettings
    , RenewalSettings
    , renewalSettings
    , rsKind
    , rsRenewalType
    ) where

import           Network.Google.AppsReseller.Types.Product
import           Network.Google.AppsReseller.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1sandbox' of the Enterprise Apps Reseller API.
appsResellerURL :: BaseUrl
appsResellerURL
  = BaseUrl Https
      "https://www.googleapis.com/apps/reseller/v1sandbox/"
      443
