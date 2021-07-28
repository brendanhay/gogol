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
-- Module      : Network.Google.Resource.CloudIdentity.Groups.Lookup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up the [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of a
-- \`Group\` by its \`EntityKey\`.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.groups.lookup@.
module Network.Google.Resource.CloudIdentity.Groups.Lookup
    (
    -- * REST Resource
      GroupsLookupResource

    -- * Creating a Request
    , groupsLookup
    , GroupsLookup

    -- * Request Lenses
    , glXgafv
    , glUploadProtocol
    , glAccessToken
    , glGroupKeyId
    , glUploadType
    , glGroupKeyNamespace
    , glCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.groups.lookup@ method which the
-- 'GroupsLookup' request conforms to.
type GroupsLookupResource =
     "v1" :>
       "groups:lookup" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "groupKey.id" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "groupKey.namespace" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] LookupGroupNameResponse

-- | Looks up the [resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of a
-- \`Group\` by its \`EntityKey\`.
--
-- /See:/ 'groupsLookup' smart constructor.
data GroupsLookup =
  GroupsLookup'
    { _glXgafv :: !(Maybe Xgafv)
    , _glUploadProtocol :: !(Maybe Text)
    , _glAccessToken :: !(Maybe Text)
    , _glGroupKeyId :: !(Maybe Text)
    , _glUploadType :: !(Maybe Text)
    , _glGroupKeyNamespace :: !(Maybe Text)
    , _glCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GroupsLookup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glXgafv'
--
-- * 'glUploadProtocol'
--
-- * 'glAccessToken'
--
-- * 'glGroupKeyId'
--
-- * 'glUploadType'
--
-- * 'glGroupKeyNamespace'
--
-- * 'glCallback'
groupsLookup
    :: GroupsLookup
groupsLookup =
  GroupsLookup'
    { _glXgafv = Nothing
    , _glUploadProtocol = Nothing
    , _glAccessToken = Nothing
    , _glGroupKeyId = Nothing
    , _glUploadType = Nothing
    , _glGroupKeyNamespace = Nothing
    , _glCallback = Nothing
    }


-- | V1 error format.
glXgafv :: Lens' GroupsLookup (Maybe Xgafv)
glXgafv = lens _glXgafv (\ s a -> s{_glXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
glUploadProtocol :: Lens' GroupsLookup (Maybe Text)
glUploadProtocol
  = lens _glUploadProtocol
      (\ s a -> s{_glUploadProtocol = a})

-- | OAuth access token.
glAccessToken :: Lens' GroupsLookup (Maybe Text)
glAccessToken
  = lens _glAccessToken
      (\ s a -> s{_glAccessToken = a})

-- | The ID of the entity. For Google-managed entities, the \`id\` should be
-- the email address of an existing group or user. For
-- external-identity-mapped entities, the \`id\` must be a string
-- conforming to the Identity Source\'s requirements. Must be unique within
-- a \`namespace\`.
glGroupKeyId :: Lens' GroupsLookup (Maybe Text)
glGroupKeyId
  = lens _glGroupKeyId (\ s a -> s{_glGroupKeyId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
glUploadType :: Lens' GroupsLookup (Maybe Text)
glUploadType
  = lens _glUploadType (\ s a -> s{_glUploadType = a})

-- | The namespace in which the entity exists. If not specified, the
-- \`EntityKey\` represents a Google-managed entity such as a Google user
-- or a Google Group. If specified, the \`EntityKey\` represents an
-- external-identity-mapped group. The namespace must correspond to an
-- identity source created in Admin Console and must be in the form of
-- \`identitysources\/{identity_source_id}\`.
glGroupKeyNamespace :: Lens' GroupsLookup (Maybe Text)
glGroupKeyNamespace
  = lens _glGroupKeyNamespace
      (\ s a -> s{_glGroupKeyNamespace = a})

-- | JSONP
glCallback :: Lens' GroupsLookup (Maybe Text)
glCallback
  = lens _glCallback (\ s a -> s{_glCallback = a})

instance GoogleRequest GroupsLookup where
        type Rs GroupsLookup = LookupGroupNameResponse
        type Scopes GroupsLookup =
             '["https://www.googleapis.com/auth/cloud-identity.groups",
               "https://www.googleapis.com/auth/cloud-identity.groups.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient GroupsLookup'{..}
          = go _glXgafv _glUploadProtocol _glAccessToken
              _glGroupKeyId
              _glUploadType
              _glGroupKeyNamespace
              _glCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient (Proxy :: Proxy GroupsLookupResource)
                      mempty
