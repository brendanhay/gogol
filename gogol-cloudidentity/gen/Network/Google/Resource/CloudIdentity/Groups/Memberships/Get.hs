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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Membership.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.get@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.Get
    (
    -- * REST Resource
      GroupsMembershipsGetResource

    -- * Creating a Request
    , groupsMembershipsGet
    , GroupsMembershipsGet

    -- * Request Lenses
    , gmgXgafv
    , gmgUploadProtocol
    , gmgAccessToken
    , gmgUploadType
    , gmgName
    , gmgCallback
    ) where

import           Network.Google.CloudIdentity.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.get@ method which the
-- 'GroupsMembershipsGet' request conforms to.
type GroupsMembershipsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Membership

-- | Retrieves a Membership.
--
-- /See:/ 'groupsMembershipsGet' smart constructor.
data GroupsMembershipsGet =
  GroupsMembershipsGet'
    { _gmgXgafv          :: !(Maybe Xgafv)
    , _gmgUploadProtocol :: !(Maybe Text)
    , _gmgAccessToken    :: !(Maybe Text)
    , _gmgUploadType     :: !(Maybe Text)
    , _gmgName           :: !Text
    , _gmgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsMembershipsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmgXgafv'
--
-- * 'gmgUploadProtocol'
--
-- * 'gmgAccessToken'
--
-- * 'gmgUploadType'
--
-- * 'gmgName'
--
-- * 'gmgCallback'
groupsMembershipsGet
    :: Text -- ^ 'gmgName'
    -> GroupsMembershipsGet
groupsMembershipsGet pGmgName_ =
  GroupsMembershipsGet'
    { _gmgXgafv = Nothing
    , _gmgUploadProtocol = Nothing
    , _gmgAccessToken = Nothing
    , _gmgUploadType = Nothing
    , _gmgName = pGmgName_
    , _gmgCallback = Nothing
    }


-- | V1 error format.
gmgXgafv :: Lens' GroupsMembershipsGet (Maybe Xgafv)
gmgXgafv = lens _gmgXgafv (\ s a -> s{_gmgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gmgUploadProtocol :: Lens' GroupsMembershipsGet (Maybe Text)
gmgUploadProtocol
  = lens _gmgUploadProtocol
      (\ s a -> s{_gmgUploadProtocol = a})

-- | OAuth access token.
gmgAccessToken :: Lens' GroupsMembershipsGet (Maybe Text)
gmgAccessToken
  = lens _gmgAccessToken
      (\ s a -> s{_gmgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gmgUploadType :: Lens' GroupsMembershipsGet (Maybe Text)
gmgUploadType
  = lens _gmgUploadType
      (\ s a -> s{_gmgUploadType = a})

-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Membership to be retrieved. Format:
-- \`groups\/{group_id}\/memberships\/{member_id}\`, where \`group_id\` is
-- the unique id assigned to the Group to which Membership belongs to, and
-- \`member_id\` is the unique ID assigned to the member.
gmgName :: Lens' GroupsMembershipsGet Text
gmgName = lens _gmgName (\ s a -> s{_gmgName = a})

-- | JSONP
gmgCallback :: Lens' GroupsMembershipsGet (Maybe Text)
gmgCallback
  = lens _gmgCallback (\ s a -> s{_gmgCallback = a})

instance GoogleRequest GroupsMembershipsGet where
        type Rs GroupsMembershipsGet = Membership
        type Scopes GroupsMembershipsGet = '[]
        requestClient GroupsMembershipsGet'{..}
          = go _gmgName _gmgXgafv _gmgUploadProtocol
              _gmgAccessToken
              _gmgUploadType
              _gmgCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsMembershipsGetResource)
                      mempty
