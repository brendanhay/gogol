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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the default object ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.get@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Get
    (
    -- * REST Resource
      DefaultObjectAccessControlsGetResource

    -- * Creating a Request
    , defaultObjectAccessControlsGet
    , DefaultObjectAccessControlsGet

    -- * Request Lenses
    , doacgBucket
    , doacgEntity
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.get@ method which the
-- 'DefaultObjectAccessControlsGet' request conforms to.
type DefaultObjectAccessControlsGetResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "defaultObjectAcl" :>
               Capture "entity" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ObjectAccessControl

-- | Returns the default object ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsGet' smart constructor.
data DefaultObjectAccessControlsGet = DefaultObjectAccessControlsGet
    { _doacgBucket :: !Text
    , _doacgEntity :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DefaultObjectAccessControlsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doacgBucket'
--
-- * 'doacgEntity'
defaultObjectAccessControlsGet
    :: Text -- ^ 'doacgBucket'
    -> Text -- ^ 'doacgEntity'
    -> DefaultObjectAccessControlsGet
defaultObjectAccessControlsGet pDoacgBucket_ pDoacgEntity_ =
    DefaultObjectAccessControlsGet
    { _doacgBucket = pDoacgBucket_
    , _doacgEntity = pDoacgEntity_
    }

-- | Name of a bucket.
doacgBucket :: Lens' DefaultObjectAccessControlsGet Text
doacgBucket
  = lens _doacgBucket (\ s a -> s{_doacgBucket = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
doacgEntity :: Lens' DefaultObjectAccessControlsGet Text
doacgEntity
  = lens _doacgEntity (\ s a -> s{_doacgEntity = a})

instance GoogleRequest DefaultObjectAccessControlsGet
         where
        type Rs DefaultObjectAccessControlsGet =
             ObjectAccessControl
        requestClient DefaultObjectAccessControlsGet{..}
          = go _doacgBucket _doacgEntity (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsGetResource)
                      mempty
