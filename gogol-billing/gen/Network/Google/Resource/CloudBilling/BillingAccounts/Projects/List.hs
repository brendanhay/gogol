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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the projects associated with a billing account. The current
-- authenticated user must be an [owner of the billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference> for @CloudBillingBillingAccountsProjectsList@.
module Network.Google.Resource.CloudBilling.BillingAccounts.Projects.List
    (
    -- * REST Resource
      BillingAccountsProjectsListResource

    -- * Creating a Request
    , billingAccountsProjectsList'
    , BillingAccountsProjectsList'

    -- * Request Lenses
    , baplXgafv
    , baplUploadProtocol
    , baplPp
    , baplAccessToken
    , baplUploadType
    , baplBearerToken
    , baplName
    , baplPageToken
    , baplPageSize
    , baplCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudBillingBillingAccountsProjectsList@ method which the
-- 'BillingAccountsProjectsList'' request conforms to.
type BillingAccountsProjectsListResource =
     "v1" :>
       Capture "name" Text :>
         "projects" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" Int32 :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListProjectBillingInfoResponse

-- | Lists the projects associated with a billing account. The current
-- authenticated user must be an [owner of the billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ 'billingAccountsProjectsList'' smart constructor.
data BillingAccountsProjectsList' = BillingAccountsProjectsList'
    { _baplXgafv          :: !(Maybe Text)
    , _baplUploadProtocol :: !(Maybe Text)
    , _baplPp             :: !Bool
    , _baplAccessToken    :: !(Maybe Text)
    , _baplUploadType     :: !(Maybe Text)
    , _baplBearerToken    :: !(Maybe Text)
    , _baplName           :: !Text
    , _baplPageToken      :: !(Maybe Text)
    , _baplPageSize       :: !(Maybe Int32)
    , _baplCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsProjectsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baplXgafv'
--
-- * 'baplUploadProtocol'
--
-- * 'baplPp'
--
-- * 'baplAccessToken'
--
-- * 'baplUploadType'
--
-- * 'baplBearerToken'
--
-- * 'baplName'
--
-- * 'baplPageToken'
--
-- * 'baplPageSize'
--
-- * 'baplCallback'
billingAccountsProjectsList'
    :: Text -- ^ 'name'
    -> BillingAccountsProjectsList'
billingAccountsProjectsList' pBaplName_ =
    BillingAccountsProjectsList'
    { _baplXgafv = Nothing
    , _baplUploadProtocol = Nothing
    , _baplPp = True
    , _baplAccessToken = Nothing
    , _baplUploadType = Nothing
    , _baplBearerToken = Nothing
    , _baplName = pBaplName_
    , _baplPageToken = Nothing
    , _baplPageSize = Nothing
    , _baplCallback = Nothing
    }

-- | V1 error format.
baplXgafv :: Lens' BillingAccountsProjectsList' (Maybe Text)
baplXgafv
  = lens _baplXgafv (\ s a -> s{_baplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baplUploadProtocol :: Lens' BillingAccountsProjectsList' (Maybe Text)
baplUploadProtocol
  = lens _baplUploadProtocol
      (\ s a -> s{_baplUploadProtocol = a})

-- | Pretty-print response.
baplPp :: Lens' BillingAccountsProjectsList' Bool
baplPp = lens _baplPp (\ s a -> s{_baplPp = a})

-- | OAuth access token.
baplAccessToken :: Lens' BillingAccountsProjectsList' (Maybe Text)
baplAccessToken
  = lens _baplAccessToken
      (\ s a -> s{_baplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baplUploadType :: Lens' BillingAccountsProjectsList' (Maybe Text)
baplUploadType
  = lens _baplUploadType
      (\ s a -> s{_baplUploadType = a})

-- | OAuth bearer token.
baplBearerToken :: Lens' BillingAccountsProjectsList' (Maybe Text)
baplBearerToken
  = lens _baplBearerToken
      (\ s a -> s{_baplBearerToken = a})

-- | The resource name of the billing account associated with the projects
-- that you want to list. For example,
-- \`billingAccounts\/012345-567890-ABCDEF\`.
baplName :: Lens' BillingAccountsProjectsList' Text
baplName = lens _baplName (\ s a -> s{_baplName = a})

-- | A token identifying a page of results to be returned. This should be a
-- \`next_page_token\` value returned from a previous
-- \`ListProjectBillingInfo\` call. If unspecified, the first page of
-- results is returned.
baplPageToken :: Lens' BillingAccountsProjectsList' (Maybe Text)
baplPageToken
  = lens _baplPageToken
      (\ s a -> s{_baplPageToken = a})

-- | Requested page size. The maximum page size is 100; this is also the
-- default.
baplPageSize :: Lens' BillingAccountsProjectsList' (Maybe Int32)
baplPageSize
  = lens _baplPageSize (\ s a -> s{_baplPageSize = a})

-- | JSONP
baplCallback :: Lens' BillingAccountsProjectsList' (Maybe Text)
baplCallback
  = lens _baplCallback (\ s a -> s{_baplCallback = a})

instance GoogleRequest BillingAccountsProjectsList'
         where
        type Rs BillingAccountsProjectsList' =
             ListProjectBillingInfoResponse
        requestClient BillingAccountsProjectsList'{..}
          = go _baplName _baplXgafv _baplUploadProtocol
              (Just _baplPp)
              _baplAccessToken
              _baplUploadType
              _baplBearerToken
              _baplPageToken
              _baplPageSize
              _baplCallback
              (Just AltJSON)
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsProjectsListResource)
                      mempty
