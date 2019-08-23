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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.PublisherProFiles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all publisher profiles visible to the buyer
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.publisherProfiles.list@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.PublisherProFiles.List
    (
    -- * REST Resource
      AccountsPublisherProFilesListResource

    -- * Creating a Request
    , accountsPublisherProFilesList
    , AccountsPublisherProFilesList

    -- * Request Lenses
    , appflXgafv
    , appflUploadProtocol
    , appflAccessToken
    , appflUploadType
    , appflAccountId
    , appflPageToken
    , appflPageSize
    , appflCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.publisherProfiles.list@ method which the
-- 'AccountsPublisherProFilesList' request conforms to.
type AccountsPublisherProFilesListResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "publisherProfiles" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListPublisherProFilesResponse

-- | List all publisher profiles visible to the buyer
--
-- /See:/ 'accountsPublisherProFilesList' smart constructor.
data AccountsPublisherProFilesList =
  AccountsPublisherProFilesList'
    { _appflXgafv          :: !(Maybe Xgafv)
    , _appflUploadProtocol :: !(Maybe Text)
    , _appflAccessToken    :: !(Maybe Text)
    , _appflUploadType     :: !(Maybe Text)
    , _appflAccountId      :: !Text
    , _appflPageToken      :: !(Maybe Text)
    , _appflPageSize       :: !(Maybe (Textual Int32))
    , _appflCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsPublisherProFilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appflXgafv'
--
-- * 'appflUploadProtocol'
--
-- * 'appflAccessToken'
--
-- * 'appflUploadType'
--
-- * 'appflAccountId'
--
-- * 'appflPageToken'
--
-- * 'appflPageSize'
--
-- * 'appflCallback'
accountsPublisherProFilesList
    :: Text -- ^ 'appflAccountId'
    -> AccountsPublisherProFilesList
accountsPublisherProFilesList pAppflAccountId_ =
  AccountsPublisherProFilesList'
    { _appflXgafv = Nothing
    , _appflUploadProtocol = Nothing
    , _appflAccessToken = Nothing
    , _appflUploadType = Nothing
    , _appflAccountId = pAppflAccountId_
    , _appflPageToken = Nothing
    , _appflPageSize = Nothing
    , _appflCallback = Nothing
    }


-- | V1 error format.
appflXgafv :: Lens' AccountsPublisherProFilesList (Maybe Xgafv)
appflXgafv
  = lens _appflXgafv (\ s a -> s{_appflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
appflUploadProtocol :: Lens' AccountsPublisherProFilesList (Maybe Text)
appflUploadProtocol
  = lens _appflUploadProtocol
      (\ s a -> s{_appflUploadProtocol = a})

-- | OAuth access token.
appflAccessToken :: Lens' AccountsPublisherProFilesList (Maybe Text)
appflAccessToken
  = lens _appflAccessToken
      (\ s a -> s{_appflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
appflUploadType :: Lens' AccountsPublisherProFilesList (Maybe Text)
appflUploadType
  = lens _appflUploadType
      (\ s a -> s{_appflUploadType = a})

-- | Account ID of the buyer.
appflAccountId :: Lens' AccountsPublisherProFilesList Text
appflAccountId
  = lens _appflAccountId
      (\ s a -> s{_appflAccountId = a})

-- | The page token as return from ListPublisherProfilesResponse.
appflPageToken :: Lens' AccountsPublisherProFilesList (Maybe Text)
appflPageToken
  = lens _appflPageToken
      (\ s a -> s{_appflPageToken = a})

-- | Specify the number of results to include per page.
appflPageSize :: Lens' AccountsPublisherProFilesList (Maybe Int32)
appflPageSize
  = lens _appflPageSize
      (\ s a -> s{_appflPageSize = a})
      . mapping _Coerce

-- | JSONP
appflCallback :: Lens' AccountsPublisherProFilesList (Maybe Text)
appflCallback
  = lens _appflCallback
      (\ s a -> s{_appflCallback = a})

instance GoogleRequest AccountsPublisherProFilesList
         where
        type Rs AccountsPublisherProFilesList =
             ListPublisherProFilesResponse
        type Scopes AccountsPublisherProFilesList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsPublisherProFilesList'{..}
          = go _appflAccountId _appflXgafv _appflUploadProtocol
              _appflAccessToken
              _appflUploadType
              _appflPageToken
              _appflPageSize
              _appflCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsPublisherProFilesListResource)
                      mempty
