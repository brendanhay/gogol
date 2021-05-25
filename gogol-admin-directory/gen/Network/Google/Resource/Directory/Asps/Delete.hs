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
-- Module      : Network.Google.Resource.Directory.Asps.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an ASP issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.asps.delete@.
module Network.Google.Resource.Directory.Asps.Delete
    (
    -- * REST Resource
      AspsDeleteResource

    -- * Creating a Request
    , aspsDelete
    , AspsDelete

    -- * Request Lenses
    , adXgafv
    , adUploadProtocol
    , adCodeId
    , adAccessToken
    , adUploadType
    , adUserKey
    , adCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.asps.delete@ method which the
-- 'AspsDelete' request conforms to.
type AspsDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "asps" :>
                 Capture "codeId" (Textual Int32) :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an ASP issued by a user.
--
-- /See:/ 'aspsDelete' smart constructor.
data AspsDelete =
  AspsDelete'
    { _adXgafv :: !(Maybe Xgafv)
    , _adUploadProtocol :: !(Maybe Text)
    , _adCodeId :: !(Textual Int32)
    , _adAccessToken :: !(Maybe Text)
    , _adUploadType :: !(Maybe Text)
    , _adUserKey :: !Text
    , _adCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AspsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adXgafv'
--
-- * 'adUploadProtocol'
--
-- * 'adCodeId'
--
-- * 'adAccessToken'
--
-- * 'adUploadType'
--
-- * 'adUserKey'
--
-- * 'adCallback'
aspsDelete
    :: Int32 -- ^ 'adCodeId'
    -> Text -- ^ 'adUserKey'
    -> AspsDelete
aspsDelete pAdCodeId_ pAdUserKey_ =
  AspsDelete'
    { _adXgafv = Nothing
    , _adUploadProtocol = Nothing
    , _adCodeId = _Coerce # pAdCodeId_
    , _adAccessToken = Nothing
    , _adUploadType = Nothing
    , _adUserKey = pAdUserKey_
    , _adCallback = Nothing
    }


-- | V1 error format.
adXgafv :: Lens' AspsDelete (Maybe Xgafv)
adXgafv = lens _adXgafv (\ s a -> s{_adXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
adUploadProtocol :: Lens' AspsDelete (Maybe Text)
adUploadProtocol
  = lens _adUploadProtocol
      (\ s a -> s{_adUploadProtocol = a})

-- | The unique ID of the ASP to be deleted.
adCodeId :: Lens' AspsDelete Int32
adCodeId
  = lens _adCodeId (\ s a -> s{_adCodeId = a}) .
      _Coerce

-- | OAuth access token.
adAccessToken :: Lens' AspsDelete (Maybe Text)
adAccessToken
  = lens _adAccessToken
      (\ s a -> s{_adAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
adUploadType :: Lens' AspsDelete (Maybe Text)
adUploadType
  = lens _adUploadType (\ s a -> s{_adUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
adUserKey :: Lens' AspsDelete Text
adUserKey
  = lens _adUserKey (\ s a -> s{_adUserKey = a})

-- | JSONP
adCallback :: Lens' AspsDelete (Maybe Text)
adCallback
  = lens _adCallback (\ s a -> s{_adCallback = a})

instance GoogleRequest AspsDelete where
        type Rs AspsDelete = ()
        type Scopes AspsDelete =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient AspsDelete'{..}
          = go _adUserKey _adCodeId _adXgafv _adUploadProtocol
              _adAccessToken
              _adUploadType
              _adCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy AspsDeleteResource)
                      mempty
