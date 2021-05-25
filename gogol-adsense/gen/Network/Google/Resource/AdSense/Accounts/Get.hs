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
-- Module      : Network.Google.Resource.AdSense.Accounts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the selected AdSense account.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.get@.
module Network.Google.Resource.AdSense.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , agXgafv
    , agUploadProtocol
    , agAccessToken
    , agUploadType
    , agName
    , agCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.get@ method which the
-- 'AccountsGet' request conforms to.
type AccountsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Gets information about the selected AdSense account.
--
-- /See:/ 'accountsGet' smart constructor.
data AccountsGet =
  AccountsGet'
    { _agXgafv :: !(Maybe Xgafv)
    , _agUploadProtocol :: !(Maybe Text)
    , _agAccessToken :: !(Maybe Text)
    , _agUploadType :: !(Maybe Text)
    , _agName :: !Text
    , _agCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agUploadProtocol'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agName'
--
-- * 'agCallback'
accountsGet
    :: Text -- ^ 'agName'
    -> AccountsGet
accountsGet pAgName_ =
  AccountsGet'
    { _agXgafv = Nothing
    , _agUploadProtocol = Nothing
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agName = pAgName_
    , _agCallback = Nothing
    }


-- | V1 error format.
agXgafv :: Lens' AccountsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AccountsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | OAuth access token.
agAccessToken :: Lens' AccountsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AccountsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | Required. Account to get information about. Format:
-- accounts\/{account_id}
agName :: Lens' AccountsGet Text
agName = lens _agName (\ s a -> s{_agName = a})

-- | JSONP
agCallback :: Lens' AccountsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest AccountsGet where
        type Rs AccountsGet = Account
        type Scopes AccountsGet =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsGet'{..}
          = go _agName _agXgafv _agUploadProtocol
              _agAccessToken
              _agUploadType
              _agCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty
