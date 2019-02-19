{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.CloudBilling.BillingAccounts.Projects.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the projects associated with a billing account. The current
-- authenticated user must have the \`billing.resourceAssociations.list\`
-- IAM permission, which is often given to billing account
-- [viewers](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.projects.list@.
module Network.Google.Resource.CloudBilling.BillingAccounts.Projects.List
    (
    -- * REST Resource
      BillingAccountsProjectsListResource

    -- * Creating a Request
    , billingAccountsProjectsList
    , BillingAccountsProjectsList

    -- * Request Lenses
    , baplXgafv
    , baplUploadProtocol
    , baplAccessToken
    , baplUploadType
    , baplName
    , baplPageToken
    , baplPageSize
    , baplCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbilling.billingAccounts.projects.list@ method which the
-- 'BillingAccountsProjectsList' request conforms to.
type BillingAccountsProjectsListResource =
     "v1" :>
       Capture "name" Text :>
         "projects" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListProjectBillingInfoResponse

-- | Lists the projects associated with a billing account. The current
-- authenticated user must have the \`billing.resourceAssociations.list\`
-- IAM permission, which is often given to billing account
-- [viewers](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
--
-- /See:/ 'billingAccountsProjectsList' smart constructor.
data BillingAccountsProjectsList =
  BillingAccountsProjectsList'
    { _baplXgafv          :: !(Maybe Xgafv)
    , _baplUploadProtocol :: !(Maybe Text)
    , _baplAccessToken    :: !(Maybe Text)
    , _baplUploadType     :: !(Maybe Text)
    , _baplName           :: !Text
    , _baplPageToken      :: !(Maybe Text)
    , _baplPageSize       :: !(Maybe (Textual Int32))
    , _baplCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsProjectsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baplXgafv'
--
-- * 'baplUploadProtocol'
--
-- * 'baplAccessToken'
--
-- * 'baplUploadType'
--
-- * 'baplName'
--
-- * 'baplPageToken'
--
-- * 'baplPageSize'
--
-- * 'baplCallback'
billingAccountsProjectsList
    :: Text -- ^ 'baplName'
    -> BillingAccountsProjectsList
billingAccountsProjectsList pBaplName_ =
  BillingAccountsProjectsList'
    { _baplXgafv = Nothing
    , _baplUploadProtocol = Nothing
    , _baplAccessToken = Nothing
    , _baplUploadType = Nothing
    , _baplName = pBaplName_
    , _baplPageToken = Nothing
    , _baplPageSize = Nothing
    , _baplCallback = Nothing
    }


-- | V1 error format.
baplXgafv :: Lens' BillingAccountsProjectsList (Maybe Xgafv)
baplXgafv
  = lens _baplXgafv (\ s a -> s{_baplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baplUploadProtocol :: Lens' BillingAccountsProjectsList (Maybe Text)
baplUploadProtocol
  = lens _baplUploadProtocol
      (\ s a -> s{_baplUploadProtocol = a})

-- | OAuth access token.
baplAccessToken :: Lens' BillingAccountsProjectsList (Maybe Text)
baplAccessToken
  = lens _baplAccessToken
      (\ s a -> s{_baplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baplUploadType :: Lens' BillingAccountsProjectsList (Maybe Text)
baplUploadType
  = lens _baplUploadType
      (\ s a -> s{_baplUploadType = a})

-- | The resource name of the billing account associated with the projects
-- that you want to list. For example,
-- \`billingAccounts\/012345-567890-ABCDEF\`.
baplName :: Lens' BillingAccountsProjectsList Text
baplName = lens _baplName (\ s a -> s{_baplName = a})

-- | A token identifying a page of results to be returned. This should be a
-- \`next_page_token\` value returned from a previous
-- \`ListProjectBillingInfo\` call. If unspecified, the first page of
-- results is returned.
baplPageToken :: Lens' BillingAccountsProjectsList (Maybe Text)
baplPageToken
  = lens _baplPageToken
      (\ s a -> s{_baplPageToken = a})

-- | Requested page size. The maximum page size is 100; this is also the
-- default.
baplPageSize :: Lens' BillingAccountsProjectsList (Maybe Int32)
baplPageSize
  = lens _baplPageSize (\ s a -> s{_baplPageSize = a})
      . mapping _Coerce

-- | JSONP
baplCallback :: Lens' BillingAccountsProjectsList (Maybe Text)
baplCallback
  = lens _baplCallback (\ s a -> s{_baplCallback = a})

instance GoogleRequest BillingAccountsProjectsList
         where
        type Rs BillingAccountsProjectsList =
             ListProjectBillingInfoResponse
        type Scopes BillingAccountsProjectsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BillingAccountsProjectsList'{..}
          = go _baplName _baplXgafv _baplUploadProtocol
              _baplAccessToken
              _baplUploadType
              _baplPageToken
              _baplPageSize
              _baplCallback
              (Just AltJSON)
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsProjectsListResource)
                      mempty
