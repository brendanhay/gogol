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
-- Module      : Network.Google.Resource.Directory.Asps.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the ASPs issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.asps.list@.
module Network.Google.Resource.Directory.Asps.List
    (
    -- * REST Resource
      AspsListResource

    -- * Creating a Request
    , aspsList
    , AspsList

    -- * Request Lenses
    , alXgafv
    , alUploadProtocol
    , alAccessToken
    , alUploadType
    , alUserKey
    , alCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.asps.list@ method which the
-- 'AspsList' request conforms to.
type AspsListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "asps" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Asps

-- | Lists the ASPs issued by a user.
--
-- /See:/ 'aspsList' smart constructor.
data AspsList =
  AspsList'
    { _alXgafv :: !(Maybe Xgafv)
    , _alUploadProtocol :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alUploadType :: !(Maybe Text)
    , _alUserKey :: !Text
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AspsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alXgafv'
--
-- * 'alUploadProtocol'
--
-- * 'alAccessToken'
--
-- * 'alUploadType'
--
-- * 'alUserKey'
--
-- * 'alCallback'
aspsList
    :: Text -- ^ 'alUserKey'
    -> AspsList
aspsList pAlUserKey_ =
  AspsList'
    { _alXgafv = Nothing
    , _alUploadProtocol = Nothing
    , _alAccessToken = Nothing
    , _alUploadType = Nothing
    , _alUserKey = pAlUserKey_
    , _alCallback = Nothing
    }


-- | V1 error format.
alXgafv :: Lens' AspsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AspsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | OAuth access token.
alAccessToken :: Lens' AspsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AspsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
alUserKey :: Lens' AspsList Text
alUserKey
  = lens _alUserKey (\ s a -> s{_alUserKey = a})

-- | JSONP
alCallback :: Lens' AspsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AspsList where
        type Rs AspsList = Asps
        type Scopes AspsList =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient AspsList'{..}
          = go _alUserKey _alXgafv _alUploadProtocol
              _alAccessToken
              _alUploadType
              _alCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy AspsListResource)
                      mempty
