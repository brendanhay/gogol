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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Membership.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.create@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.Create
    (
    -- * REST Resource
      GroupsMembershipsCreateResource

    -- * Creating a Request
    , groupsMembershipsCreate
    , GroupsMembershipsCreate

    -- * Request Lenses
    , gmcParent
    , gmcXgafv
    , gmcUploadProtocol
    , gmcAccessToken
    , gmcUploadType
    , gmcPayload
    , gmcCallback
    ) where

import           Network.Google.CloudIdentity.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.create@ method which the
-- 'GroupsMembershipsCreate' request conforms to.
type GroupsMembershipsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "memberships" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Membership :> Post '[JSON] Operation

-- | Creates a Membership.
--
-- /See:/ 'groupsMembershipsCreate' smart constructor.
data GroupsMembershipsCreate =
  GroupsMembershipsCreate'
    { _gmcParent         :: !Text
    , _gmcXgafv          :: !(Maybe Xgafv)
    , _gmcUploadProtocol :: !(Maybe Text)
    , _gmcAccessToken    :: !(Maybe Text)
    , _gmcUploadType     :: !(Maybe Text)
    , _gmcPayload        :: !Membership
    , _gmcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsMembershipsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmcParent'
--
-- * 'gmcXgafv'
--
-- * 'gmcUploadProtocol'
--
-- * 'gmcAccessToken'
--
-- * 'gmcUploadType'
--
-- * 'gmcPayload'
--
-- * 'gmcCallback'
groupsMembershipsCreate
    :: Text -- ^ 'gmcParent'
    -> Membership -- ^ 'gmcPayload'
    -> GroupsMembershipsCreate
groupsMembershipsCreate pGmcParent_ pGmcPayload_ =
  GroupsMembershipsCreate'
    { _gmcParent = pGmcParent_
    , _gmcXgafv = Nothing
    , _gmcUploadProtocol = Nothing
    , _gmcAccessToken = Nothing
    , _gmcUploadType = Nothing
    , _gmcPayload = pGmcPayload_
    , _gmcCallback = Nothing
    }


-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Group to create Membership within. Format: \`groups\/{group_id}\`, where
-- \`group_id\` is the unique ID assigned to the Group.
gmcParent :: Lens' GroupsMembershipsCreate Text
gmcParent
  = lens _gmcParent (\ s a -> s{_gmcParent = a})

-- | V1 error format.
gmcXgafv :: Lens' GroupsMembershipsCreate (Maybe Xgafv)
gmcXgafv = lens _gmcXgafv (\ s a -> s{_gmcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gmcUploadProtocol :: Lens' GroupsMembershipsCreate (Maybe Text)
gmcUploadProtocol
  = lens _gmcUploadProtocol
      (\ s a -> s{_gmcUploadProtocol = a})

-- | OAuth access token.
gmcAccessToken :: Lens' GroupsMembershipsCreate (Maybe Text)
gmcAccessToken
  = lens _gmcAccessToken
      (\ s a -> s{_gmcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gmcUploadType :: Lens' GroupsMembershipsCreate (Maybe Text)
gmcUploadType
  = lens _gmcUploadType
      (\ s a -> s{_gmcUploadType = a})

-- | Multipart request metadata.
gmcPayload :: Lens' GroupsMembershipsCreate Membership
gmcPayload
  = lens _gmcPayload (\ s a -> s{_gmcPayload = a})

-- | JSONP
gmcCallback :: Lens' GroupsMembershipsCreate (Maybe Text)
gmcCallback
  = lens _gmcCallback (\ s a -> s{_gmcCallback = a})

instance GoogleRequest GroupsMembershipsCreate where
        type Rs GroupsMembershipsCreate = Operation
        type Scopes GroupsMembershipsCreate = '[]
        requestClient GroupsMembershipsCreate'{..}
          = go _gmcParent _gmcXgafv _gmcUploadProtocol
              _gmcAccessToken
              _gmcUploadType
              _gmcCallback
              (Just AltJSON)
              _gmcPayload
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsMembershipsCreateResource)
                      mempty
