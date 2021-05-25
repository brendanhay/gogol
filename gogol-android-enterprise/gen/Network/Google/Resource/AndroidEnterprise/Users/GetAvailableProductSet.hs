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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the set of products a user is entitled to access.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.users.getAvailableProductSet@.
module Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet
    (
    -- * REST Resource
      UsersGetAvailableProductSetResource

    -- * Creating a Request
    , usersGetAvailableProductSet
    , UsersGetAvailableProductSet

    -- * Request Lenses
    , ugapsXgafv
    , ugapsUploadProtocol
    , ugapsEnterpriseId
    , ugapsAccessToken
    , ugapsUploadType
    , ugapsUserId
    , ugapsCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.users.getAvailableProductSet@ method which the
-- 'UsersGetAvailableProductSet' request conforms to.
type UsersGetAvailableProductSetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "availableProductSet" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] ProductSet

-- | Retrieves the set of products a user is entitled to access.
--
-- /See:/ 'usersGetAvailableProductSet' smart constructor.
data UsersGetAvailableProductSet =
  UsersGetAvailableProductSet'
    { _ugapsXgafv :: !(Maybe Xgafv)
    , _ugapsUploadProtocol :: !(Maybe Text)
    , _ugapsEnterpriseId :: !Text
    , _ugapsAccessToken :: !(Maybe Text)
    , _ugapsUploadType :: !(Maybe Text)
    , _ugapsUserId :: !Text
    , _ugapsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersGetAvailableProductSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugapsXgafv'
--
-- * 'ugapsUploadProtocol'
--
-- * 'ugapsEnterpriseId'
--
-- * 'ugapsAccessToken'
--
-- * 'ugapsUploadType'
--
-- * 'ugapsUserId'
--
-- * 'ugapsCallback'
usersGetAvailableProductSet
    :: Text -- ^ 'ugapsEnterpriseId'
    -> Text -- ^ 'ugapsUserId'
    -> UsersGetAvailableProductSet
usersGetAvailableProductSet pUgapsEnterpriseId_ pUgapsUserId_ =
  UsersGetAvailableProductSet'
    { _ugapsXgafv = Nothing
    , _ugapsUploadProtocol = Nothing
    , _ugapsEnterpriseId = pUgapsEnterpriseId_
    , _ugapsAccessToken = Nothing
    , _ugapsUploadType = Nothing
    , _ugapsUserId = pUgapsUserId_
    , _ugapsCallback = Nothing
    }


-- | V1 error format.
ugapsXgafv :: Lens' UsersGetAvailableProductSet (Maybe Xgafv)
ugapsXgafv
  = lens _ugapsXgafv (\ s a -> s{_ugapsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ugapsUploadProtocol :: Lens' UsersGetAvailableProductSet (Maybe Text)
ugapsUploadProtocol
  = lens _ugapsUploadProtocol
      (\ s a -> s{_ugapsUploadProtocol = a})

-- | The ID of the enterprise.
ugapsEnterpriseId :: Lens' UsersGetAvailableProductSet Text
ugapsEnterpriseId
  = lens _ugapsEnterpriseId
      (\ s a -> s{_ugapsEnterpriseId = a})

-- | OAuth access token.
ugapsAccessToken :: Lens' UsersGetAvailableProductSet (Maybe Text)
ugapsAccessToken
  = lens _ugapsAccessToken
      (\ s a -> s{_ugapsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ugapsUploadType :: Lens' UsersGetAvailableProductSet (Maybe Text)
ugapsUploadType
  = lens _ugapsUploadType
      (\ s a -> s{_ugapsUploadType = a})

-- | The ID of the user.
ugapsUserId :: Lens' UsersGetAvailableProductSet Text
ugapsUserId
  = lens _ugapsUserId (\ s a -> s{_ugapsUserId = a})

-- | JSONP
ugapsCallback :: Lens' UsersGetAvailableProductSet (Maybe Text)
ugapsCallback
  = lens _ugapsCallback
      (\ s a -> s{_ugapsCallback = a})

instance GoogleRequest UsersGetAvailableProductSet
         where
        type Rs UsersGetAvailableProductSet = ProductSet
        type Scopes UsersGetAvailableProductSet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient UsersGetAvailableProductSet'{..}
          = go _ugapsEnterpriseId _ugapsUserId _ugapsXgafv
              _ugapsUploadProtocol
              _ugapsAccessToken
              _ugapsUploadType
              _ugapsCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersGetAvailableProductSetResource)
                      mempty
