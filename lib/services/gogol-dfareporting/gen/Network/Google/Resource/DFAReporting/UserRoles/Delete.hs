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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userRoles.delete@.
module Network.Google.Resource.DFAReporting.UserRoles.Delete
    (
    -- * REST Resource
      UserRolesDeleteResource

    -- * Creating a Request
    , userRolesDelete
    , UserRolesDelete

    -- * Request Lenses
    , urdXgafv
    , urdUploadProtocol
    , urdAccessToken
    , urdUploadType
    , urdProFileId
    , urdId
    , urdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userRoles.delete@ method which the
-- 'UserRolesDelete' request conforms to.
type UserRolesDeleteResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "userRoles" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing user role.
--
-- /See:/ 'userRolesDelete' smart constructor.
data UserRolesDelete =
  UserRolesDelete'
    { _urdXgafv :: !(Maybe Xgafv)
    , _urdUploadProtocol :: !(Maybe Text)
    , _urdAccessToken :: !(Maybe Text)
    , _urdUploadType :: !(Maybe Text)
    , _urdProFileId :: !(Textual Int64)
    , _urdId :: !(Textual Int64)
    , _urdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserRolesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdXgafv'
--
-- * 'urdUploadProtocol'
--
-- * 'urdAccessToken'
--
-- * 'urdUploadType'
--
-- * 'urdProFileId'
--
-- * 'urdId'
--
-- * 'urdCallback'
userRolesDelete
    :: Int64 -- ^ 'urdProFileId'
    -> Int64 -- ^ 'urdId'
    -> UserRolesDelete
userRolesDelete pUrdProFileId_ pUrdId_ =
  UserRolesDelete'
    { _urdXgafv = Nothing
    , _urdUploadProtocol = Nothing
    , _urdAccessToken = Nothing
    , _urdUploadType = Nothing
    , _urdProFileId = _Coerce # pUrdProFileId_
    , _urdId = _Coerce # pUrdId_
    , _urdCallback = Nothing
    }


-- | V1 error format.
urdXgafv :: Lens' UserRolesDelete (Maybe Xgafv)
urdXgafv = lens _urdXgafv (\ s a -> s{_urdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
urdUploadProtocol :: Lens' UserRolesDelete (Maybe Text)
urdUploadProtocol
  = lens _urdUploadProtocol
      (\ s a -> s{_urdUploadProtocol = a})

-- | OAuth access token.
urdAccessToken :: Lens' UserRolesDelete (Maybe Text)
urdAccessToken
  = lens _urdAccessToken
      (\ s a -> s{_urdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
urdUploadType :: Lens' UserRolesDelete (Maybe Text)
urdUploadType
  = lens _urdUploadType
      (\ s a -> s{_urdUploadType = a})

-- | User profile ID associated with this request.
urdProFileId :: Lens' UserRolesDelete Int64
urdProFileId
  = lens _urdProFileId (\ s a -> s{_urdProFileId = a})
      . _Coerce

-- | User role ID.
urdId :: Lens' UserRolesDelete Int64
urdId
  = lens _urdId (\ s a -> s{_urdId = a}) . _Coerce

-- | JSONP
urdCallback :: Lens' UserRolesDelete (Maybe Text)
urdCallback
  = lens _urdCallback (\ s a -> s{_urdCallback = a})

instance GoogleRequest UserRolesDelete where
        type Rs UserRolesDelete = ()
        type Scopes UserRolesDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserRolesDelete'{..}
          = go _urdProFileId _urdId _urdXgafv
              _urdUploadProtocol
              _urdAccessToken
              _urdUploadType
              _urdCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserRolesDeleteResource)
                      mempty
