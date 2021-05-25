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
-- Module      : Network.Google.Resource.AdSense.Accounts.Alerts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the alerts available in an account.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.alerts.list@.
module Network.Google.Resource.AdSense.Accounts.Alerts.List
    (
    -- * REST Resource
      AccountsAlertsListResource

    -- * Creating a Request
    , accountsAlertsList
    , AccountsAlertsList

    -- * Request Lenses
    , aalParent
    , aalXgafv
    , aalLanguageCode
    , aalUploadProtocol
    , aalAccessToken
    , aalUploadType
    , aalCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.alerts.list@ method which the
-- 'AccountsAlertsList' request conforms to.
type AccountsAlertsListResource =
     "v2" :>
       Capture "parent" Text :>
         "alerts" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListAlertsResponse

-- | Lists all the alerts available in an account.
--
-- /See:/ 'accountsAlertsList' smart constructor.
data AccountsAlertsList =
  AccountsAlertsList'
    { _aalParent :: !Text
    , _aalXgafv :: !(Maybe Xgafv)
    , _aalLanguageCode :: !(Maybe Text)
    , _aalUploadProtocol :: !(Maybe Text)
    , _aalAccessToken :: !(Maybe Text)
    , _aalUploadType :: !(Maybe Text)
    , _aalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAlertsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalParent'
--
-- * 'aalXgafv'
--
-- * 'aalLanguageCode'
--
-- * 'aalUploadProtocol'
--
-- * 'aalAccessToken'
--
-- * 'aalUploadType'
--
-- * 'aalCallback'
accountsAlertsList
    :: Text -- ^ 'aalParent'
    -> AccountsAlertsList
accountsAlertsList pAalParent_ =
  AccountsAlertsList'
    { _aalParent = pAalParent_
    , _aalXgafv = Nothing
    , _aalLanguageCode = Nothing
    , _aalUploadProtocol = Nothing
    , _aalAccessToken = Nothing
    , _aalUploadType = Nothing
    , _aalCallback = Nothing
    }


-- | Required. The account which owns the collection of alerts. Format:
-- accounts\/{account}
aalParent :: Lens' AccountsAlertsList Text
aalParent
  = lens _aalParent (\ s a -> s{_aalParent = a})

-- | V1 error format.
aalXgafv :: Lens' AccountsAlertsList (Maybe Xgafv)
aalXgafv = lens _aalXgafv (\ s a -> s{_aalXgafv = a})

-- | The language to use for translating alert messages. If unspecified, this
-- defaults to the user\'s display language. If the given language is not
-- supported, alerts will be returned in English. The language is specified
-- as an [IETF BCP-47 language
-- code](https:\/\/en.wikipedia.org\/wiki\/IETF_language_tag).
aalLanguageCode :: Lens' AccountsAlertsList (Maybe Text)
aalLanguageCode
  = lens _aalLanguageCode
      (\ s a -> s{_aalLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aalUploadProtocol :: Lens' AccountsAlertsList (Maybe Text)
aalUploadProtocol
  = lens _aalUploadProtocol
      (\ s a -> s{_aalUploadProtocol = a})

-- | OAuth access token.
aalAccessToken :: Lens' AccountsAlertsList (Maybe Text)
aalAccessToken
  = lens _aalAccessToken
      (\ s a -> s{_aalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aalUploadType :: Lens' AccountsAlertsList (Maybe Text)
aalUploadType
  = lens _aalUploadType
      (\ s a -> s{_aalUploadType = a})

-- | JSONP
aalCallback :: Lens' AccountsAlertsList (Maybe Text)
aalCallback
  = lens _aalCallback (\ s a -> s{_aalCallback = a})

instance GoogleRequest AccountsAlertsList where
        type Rs AccountsAlertsList = ListAlertsResponse
        type Scopes AccountsAlertsList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAlertsList'{..}
          = go _aalParent _aalXgafv _aalLanguageCode
              _aalUploadProtocol
              _aalAccessToken
              _aalUploadType
              _aalCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAlertsListResource)
                      mempty
