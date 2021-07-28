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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new default object ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.insert@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.Insert
    (
    -- * REST Resource
      DefaultObjectAccessControlsInsertResource

    -- * Creating a Request
    , defaultObjectAccessControlsInsert
    , DefaultObjectAccessControlsInsert

    -- * Request Lenses
    , doaciBucket
    , doaciPayload
    , doaciUserProject
    , doaciProvisionalUserProject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.insert@ method which the
-- 'DefaultObjectAccessControlsInsert' request conforms to.
type DefaultObjectAccessControlsInsertResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "defaultObjectAcl" :>
               QueryParam "userProject" Text :>
                 QueryParam "provisionalUserProject" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ObjectAccessControl :>
                       Post '[JSON] ObjectAccessControl

-- | Creates a new default object ACL entry on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsInsert' smart constructor.
data DefaultObjectAccessControlsInsert =
  DefaultObjectAccessControlsInsert'
    { _doaciBucket :: !Text
    , _doaciPayload :: !ObjectAccessControl
    , _doaciUserProject :: !(Maybe Text)
    , _doaciProvisionalUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DefaultObjectAccessControlsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doaciBucket'
--
-- * 'doaciPayload'
--
-- * 'doaciUserProject'
--
-- * 'doaciProvisionalUserProject'
defaultObjectAccessControlsInsert
    :: Text -- ^ 'doaciBucket'
    -> ObjectAccessControl -- ^ 'doaciPayload'
    -> DefaultObjectAccessControlsInsert
defaultObjectAccessControlsInsert pDoaciBucket_ pDoaciPayload_ =
  DefaultObjectAccessControlsInsert'
    { _doaciBucket = pDoaciBucket_
    , _doaciPayload = pDoaciPayload_
    , _doaciUserProject = Nothing
    , _doaciProvisionalUserProject = Nothing
    }


-- | Name of a bucket.
doaciBucket :: Lens' DefaultObjectAccessControlsInsert Text
doaciBucket
  = lens _doaciBucket (\ s a -> s{_doaciBucket = a})

-- | Multipart request metadata.
doaciPayload :: Lens' DefaultObjectAccessControlsInsert ObjectAccessControl
doaciPayload
  = lens _doaciPayload (\ s a -> s{_doaciPayload = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
doaciUserProject :: Lens' DefaultObjectAccessControlsInsert (Maybe Text)
doaciUserProject
  = lens _doaciUserProject
      (\ s a -> s{_doaciUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
doaciProvisionalUserProject :: Lens' DefaultObjectAccessControlsInsert (Maybe Text)
doaciProvisionalUserProject
  = lens _doaciProvisionalUserProject
      (\ s a -> s{_doaciProvisionalUserProject = a})

instance GoogleRequest
           DefaultObjectAccessControlsInsert
         where
        type Rs DefaultObjectAccessControlsInsert =
             ObjectAccessControl
        type Scopes DefaultObjectAccessControlsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient DefaultObjectAccessControlsInsert'{..}
          = go _doaciBucket _doaciUserProject
              _doaciProvisionalUserProject
              (Just AltJSON)
              _doaciPayload
              storageService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsInsertResource)
                      mempty
