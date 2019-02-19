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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Memberships.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Membership.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.memberships.delete@.
module Network.Google.Resource.CloudIdentity.Groups.Memberships.Delete
    (
    -- * REST Resource
      GroupsMembershipsDeleteResource

    -- * Creating a Request
    , groupsMembershipsDelete
    , GroupsMembershipsDelete

    -- * Request Lenses
    , gmdXgafv
    , gmdUploadProtocol
    , gmdAccessToken
    , gmdUploadType
    , gmdName
    , gmdCallback
    ) where

import           Network.Google.CloudIdentity.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.memberships.delete@ method which the
-- 'GroupsMembershipsDelete' request conforms to.
type GroupsMembershipsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a Membership.
--
-- /See:/ 'groupsMembershipsDelete' smart constructor.
data GroupsMembershipsDelete =
  GroupsMembershipsDelete'
    { _gmdXgafv          :: !(Maybe Xgafv)
    , _gmdUploadProtocol :: !(Maybe Text)
    , _gmdAccessToken    :: !(Maybe Text)
    , _gmdUploadType     :: !(Maybe Text)
    , _gmdName           :: !Text
    , _gmdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupsMembershipsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmdXgafv'
--
-- * 'gmdUploadProtocol'
--
-- * 'gmdAccessToken'
--
-- * 'gmdUploadType'
--
-- * 'gmdName'
--
-- * 'gmdCallback'
groupsMembershipsDelete
    :: Text -- ^ 'gmdName'
    -> GroupsMembershipsDelete
groupsMembershipsDelete pGmdName_ =
  GroupsMembershipsDelete'
    { _gmdXgafv = Nothing
    , _gmdUploadProtocol = Nothing
    , _gmdAccessToken = Nothing
    , _gmdUploadType = Nothing
    , _gmdName = pGmdName_
    , _gmdCallback = Nothing
    }

-- | V1 error format.
gmdXgafv :: Lens' GroupsMembershipsDelete (Maybe Xgafv)
gmdXgafv = lens _gmdXgafv (\ s a -> s{_gmdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gmdUploadProtocol :: Lens' GroupsMembershipsDelete (Maybe Text)
gmdUploadProtocol
  = lens _gmdUploadProtocol
      (\ s a -> s{_gmdUploadProtocol = a})

-- | OAuth access token.
gmdAccessToken :: Lens' GroupsMembershipsDelete (Maybe Text)
gmdAccessToken
  = lens _gmdAccessToken
      (\ s a -> s{_gmdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gmdUploadType :: Lens' GroupsMembershipsDelete (Maybe Text)
gmdUploadType
  = lens _gmdUploadType
      (\ s a -> s{_gmdUploadType = a})

-- | [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- Membership to be deleted. Format:
-- \`groups\/{group_id}\/memberships\/{member_id}\`, where \`group_id\` is
-- the unique ID assigned to the Group to which Membership belongs to, and
-- member_id is the unique ID assigned to the member.
gmdName :: Lens' GroupsMembershipsDelete Text
gmdName = lens _gmdName (\ s a -> s{_gmdName = a})

-- | JSONP
gmdCallback :: Lens' GroupsMembershipsDelete (Maybe Text)
gmdCallback
  = lens _gmdCallback (\ s a -> s{_gmdCallback = a})

instance GoogleRequest GroupsMembershipsDelete where
        type Rs GroupsMembershipsDelete = Operation
        type Scopes GroupsMembershipsDelete = '[]
        requestClient GroupsMembershipsDelete'{..}
          = go _gmdName _gmdXgafv _gmdUploadProtocol
              _gmdAccessToken
              _gmdUploadType
              _gmdCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupsMembershipsDeleteResource)
                      mempty
