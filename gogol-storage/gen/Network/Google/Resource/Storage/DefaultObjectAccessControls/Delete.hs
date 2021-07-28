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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes the default object ACL entry for the specified
-- entity on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.delete@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Delete
    (
    -- * REST Resource
      DefaultObjectAccessControlsDeleteResource

    -- * Creating a Request
    , defaultObjectAccessControlsDelete
    , DefaultObjectAccessControlsDelete

    -- * Request Lenses
    , doacdBucket
    , doacdUserProject
    , doacdProvisionalUserProject
    , doacdEntity
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.delete@ method which the
-- 'DefaultObjectAccessControlsDelete' request conforms to.
type DefaultObjectAccessControlsDeleteResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "defaultObjectAcl" :>
               Capture "entity" Text :>
                 QueryParam "userProject" Text :>
                   QueryParam "provisionalUserProject" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes the default object ACL entry for the specified
-- entity on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsDelete' smart constructor.
data DefaultObjectAccessControlsDelete =
  DefaultObjectAccessControlsDelete'
    { _doacdBucket :: !Text
    , _doacdUserProject :: !(Maybe Text)
    , _doacdProvisionalUserProject :: !(Maybe Text)
    , _doacdEntity :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DefaultObjectAccessControlsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacdBucket'
--
-- * 'doacdUserProject'
--
-- * 'doacdProvisionalUserProject'
--
-- * 'doacdEntity'
defaultObjectAccessControlsDelete
    :: Text -- ^ 'doacdBucket'
    -> Text -- ^ 'doacdEntity'
    -> DefaultObjectAccessControlsDelete
defaultObjectAccessControlsDelete pDoacdBucket_ pDoacdEntity_ =
  DefaultObjectAccessControlsDelete'
    { _doacdBucket = pDoacdBucket_
    , _doacdUserProject = Nothing
    , _doacdProvisionalUserProject = Nothing
    , _doacdEntity = pDoacdEntity_
    }


-- | Name of a bucket.
doacdBucket :: Lens' DefaultObjectAccessControlsDelete Text
doacdBucket
  = lens _doacdBucket (\ s a -> s{_doacdBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
doacdUserProject :: Lens' DefaultObjectAccessControlsDelete (Maybe Text)
doacdUserProject
  = lens _doacdUserProject
      (\ s a -> s{_doacdUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
doacdProvisionalUserProject :: Lens' DefaultObjectAccessControlsDelete (Maybe Text)
doacdProvisionalUserProject
  = lens _doacdProvisionalUserProject
      (\ s a -> s{_doacdProvisionalUserProject = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacdEntity :: Lens' DefaultObjectAccessControlsDelete Text
doacdEntity
  = lens _doacdEntity (\ s a -> s{_doacdEntity = a})

instance GoogleRequest
           DefaultObjectAccessControlsDelete
         where
        type Rs DefaultObjectAccessControlsDelete = ()
        type Scopes DefaultObjectAccessControlsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient DefaultObjectAccessControlsDelete'{..}
          = go _doacdBucket _doacdEntity _doacdUserProject
              _doacdProvisionalUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsDeleteResource)
                      mempty
