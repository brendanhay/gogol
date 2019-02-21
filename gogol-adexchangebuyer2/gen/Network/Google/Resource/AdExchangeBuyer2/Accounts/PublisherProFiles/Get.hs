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
-- Module      : Network.Google.Resource.AdExchangeBuyer2.Accounts.PublisherProFiles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested publisher profile by id.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.publisherProfiles.get@.
module Network.Google.Resource.AdExchangeBuyer2.Accounts.PublisherProFiles.Get
    (
    -- * REST Resource
      AccountsPublisherProFilesGetResource

    -- * Creating a Request
    , accountsPublisherProFilesGet
    , AccountsPublisherProFilesGet

    -- * Request Lenses
    , appfgXgafv
    , appfgUploadProtocol
    , appfgAccessToken
    , appfgUploadType
    , appfgAccountId
    , appfgPublisherProFileId
    , appfgCallback
    ) where

import           Network.Google.AdExchangeBuyer2.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer2.accounts.publisherProfiles.get@ method which the
-- 'AccountsPublisherProFilesGet' request conforms to.
type AccountsPublisherProFilesGetResource =
     "v2beta1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "publisherProfiles" :>
             Capture "publisherProfileId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] PublisherProFile

-- | Gets the requested publisher profile by id.
--
-- /See:/ 'accountsPublisherProFilesGet' smart constructor.
data AccountsPublisherProFilesGet =
  AccountsPublisherProFilesGet'
    { _appfgXgafv              :: !(Maybe Xgafv)
    , _appfgUploadProtocol     :: !(Maybe Text)
    , _appfgAccessToken        :: !(Maybe Text)
    , _appfgUploadType         :: !(Maybe Text)
    , _appfgAccountId          :: !Text
    , _appfgPublisherProFileId :: !Text
    , _appfgCallback           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsPublisherProFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appfgXgafv'
--
-- * 'appfgUploadProtocol'
--
-- * 'appfgAccessToken'
--
-- * 'appfgUploadType'
--
-- * 'appfgAccountId'
--
-- * 'appfgPublisherProFileId'
--
-- * 'appfgCallback'
accountsPublisherProFilesGet
    :: Text -- ^ 'appfgAccountId'
    -> Text -- ^ 'appfgPublisherProFileId'
    -> AccountsPublisherProFilesGet
accountsPublisherProFilesGet pAppfgAccountId_ pAppfgPublisherProFileId_ =
  AccountsPublisherProFilesGet'
    { _appfgXgafv = Nothing
    , _appfgUploadProtocol = Nothing
    , _appfgAccessToken = Nothing
    , _appfgUploadType = Nothing
    , _appfgAccountId = pAppfgAccountId_
    , _appfgPublisherProFileId = pAppfgPublisherProFileId_
    , _appfgCallback = Nothing
    }


-- | V1 error format.
appfgXgafv :: Lens' AccountsPublisherProFilesGet (Maybe Xgafv)
appfgXgafv
  = lens _appfgXgafv (\ s a -> s{_appfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
appfgUploadProtocol :: Lens' AccountsPublisherProFilesGet (Maybe Text)
appfgUploadProtocol
  = lens _appfgUploadProtocol
      (\ s a -> s{_appfgUploadProtocol = a})

-- | OAuth access token.
appfgAccessToken :: Lens' AccountsPublisherProFilesGet (Maybe Text)
appfgAccessToken
  = lens _appfgAccessToken
      (\ s a -> s{_appfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
appfgUploadType :: Lens' AccountsPublisherProFilesGet (Maybe Text)
appfgUploadType
  = lens _appfgUploadType
      (\ s a -> s{_appfgUploadType = a})

-- | Account ID of the buyer.
appfgAccountId :: Lens' AccountsPublisherProFilesGet Text
appfgAccountId
  = lens _appfgAccountId
      (\ s a -> s{_appfgAccountId = a})

-- | The id for the publisher profile to get.
appfgPublisherProFileId :: Lens' AccountsPublisherProFilesGet Text
appfgPublisherProFileId
  = lens _appfgPublisherProFileId
      (\ s a -> s{_appfgPublisherProFileId = a})

-- | JSONP
appfgCallback :: Lens' AccountsPublisherProFilesGet (Maybe Text)
appfgCallback
  = lens _appfgCallback
      (\ s a -> s{_appfgCallback = a})

instance GoogleRequest AccountsPublisherProFilesGet
         where
        type Rs AccountsPublisherProFilesGet =
             PublisherProFile
        type Scopes AccountsPublisherProFilesGet =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AccountsPublisherProFilesGet'{..}
          = go _appfgAccountId _appfgPublisherProFileId
              _appfgXgafv
              _appfgUploadProtocol
              _appfgAccessToken
              _appfgUploadType
              _appfgCallback
              (Just AltJSON)
              adExchangeBuyer2Service
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsPublisherProFilesGetResource)
                      mempty
