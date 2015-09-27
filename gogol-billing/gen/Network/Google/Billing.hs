{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Billing
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Retrieves Google Developers Console billing accounts and associates them
-- with projects.
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference>
module Network.Google.Billing
    (
    -- * Resources
      Billing
    , ProjectsAPI
    , ProjectsGetBillingInfo
    , ProjectsUpdateBillingInfo
    , BillingAccountsAPI
    , ProjectsAPI
    , ProjectsList

    -- * Types

    -- ** BillingAccount
    , BillingAccount
    , billingAccount
    , baOpen
    , baName
    , baDisplayName

    -- ** ListBillingAccountsResponse
    , ListBillingAccountsResponse
    , listBillingAccountsResponse
    , lbarNextPageToken
    , lbarBillingAccounts

    -- ** ListProjectBillingInfoResponse
    , ListProjectBillingInfoResponse
    , listProjectBillingInfoResponse
    , lpbirNextPageToken
    , lpbirProjectBillingInfo

    -- ** ProjectBillingInfo
    , ProjectBillingInfo
    , projectBillingInfo
    , pbiName
    , pbiBillingAccountName
    , pbiProjectId
    , pbiBillingEnabled
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Billing = ProjectsAPI :<|> BillingAccountsAPI

type ProjectsAPI =
     ProjectsGetBillingInfo :<|> ProjectsUpdateBillingInfo

-- | Gets the billing information for a project. The current authenticated
-- user must have [permission to view the
-- project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ).
type ProjectsGetBillingInfo =
     "v1" :>
       "{+name}" :>
         "billingInfo" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] ProjectBillingInfo

-- | Sets or updates the billing account associated with a project. You
-- specify the new billing account by setting the \`billing_account_name\`
-- in the \`ProjectBillingInfo\` resource to the resource name of a billing
-- account. Associating a project with an open billing account enables
-- billing on the project and allows charges for resource usage. If the
-- project already had a billing account, this method changes the billing
-- account used for resource usage charges. *Note:* Incurred charges that
-- have not yet been reported in the transaction history of the Google
-- Developers Console may be billed to the new billing account, even if the
-- charge occurred before the new billing account was assigned to the
-- project. The current authenticated user must have ownership privileges
-- for both the
-- [project](https:\/\/cloud.google.com\/docs\/permissions-overview#h.bgs0oxofvnoo
-- ) and the [billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947). You can
-- disable billing on the project by setting the \`billing_account_name\`
-- field to empty. This action disassociates the current billing account
-- from the project. Any billable activity of your in-use services will
-- stop, and your application could stop functioning as expected. Any
-- unbilled charges to date will be billed to the previously associated
-- account. The current authenticated user must be either an owner of the
-- project or an owner of the billing account for the project. Note that
-- associating a project with a *closed* billing account will have much the
-- same effect as disabling billing on the project: any paid resources used
-- by the project will be shut down. Thus, unless you wish to disable
-- billing, you should always call this method with the name of an *open*
-- billing account.
type ProjectsUpdateBillingInfo =
     "v1" :>
       "{+name}" :>
         "billingInfo" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" Text :>
                                     Put '[JSON] ProjectBillingInfo

type BillingAccountsAPI = ProjectsAPI

type ProjectsAPI = ProjectsList

-- | Lists the projects associated with a billing account. The current
-- authenticated user must be an [owner of the billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947).
type ProjectsList =
     "v1" :>
       "{+name}" :>
         "projects" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "key" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "pageSize" Int32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" Text :>
                                         Get '[JSON]
                                           ListProjectBillingInfoResponse
