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
-- Module      : Network.Google.Resource.Storage.DefaultObjectAccessControls.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves default object ACL entries on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.list@.
module Network.Google.Resource.Storage.DefaultObjectAccessControls.List
    (
    -- * REST Resource
      DefaultObjectAccessControlsListResource

    -- * Creating a Request
    , defaultObjectAccessControlsList
    , DefaultObjectAccessControlsList

    -- * Request Lenses
    , doaclIfMetagenerationMatch
    , doaclBucket
    , doaclUserProject
    , doaclIfMetagenerationNotMatch
    , doaclProvisionalUserProject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.list@ method which the
-- 'DefaultObjectAccessControlsList' request conforms to.
type DefaultObjectAccessControlsListResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "defaultObjectAcl" :>
               QueryParam "ifMetagenerationMatch" (Textual Int64) :>
                 QueryParam "userProject" Text :>
                   QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                     :>
                     QueryParam "provisionalUserProject" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ObjectAccessControls

-- | Retrieves default object ACL entries on the specified bucket.
--
-- /See:/ 'defaultObjectAccessControlsList' smart constructor.
data DefaultObjectAccessControlsList =
  DefaultObjectAccessControlsList'
    { _doaclIfMetagenerationMatch :: !(Maybe (Textual Int64))
    , _doaclBucket :: !Text
    , _doaclUserProject :: !(Maybe Text)
    , _doaclIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _doaclProvisionalUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DefaultObjectAccessControlsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doaclIfMetagenerationMatch'
--
-- * 'doaclBucket'
--
-- * 'doaclUserProject'
--
-- * 'doaclIfMetagenerationNotMatch'
--
-- * 'doaclProvisionalUserProject'
defaultObjectAccessControlsList
    :: Text -- ^ 'doaclBucket'
    -> DefaultObjectAccessControlsList
defaultObjectAccessControlsList pDoaclBucket_ =
  DefaultObjectAccessControlsList'
    { _doaclIfMetagenerationMatch = Nothing
    , _doaclBucket = pDoaclBucket_
    , _doaclUserProject = Nothing
    , _doaclIfMetagenerationNotMatch = Nothing
    , _doaclProvisionalUserProject = Nothing
    }


-- | If present, only return default ACL listing if the bucket\'s current
-- metageneration matches this value.
doaclIfMetagenerationMatch :: Lens' DefaultObjectAccessControlsList (Maybe Int64)
doaclIfMetagenerationMatch
  = lens _doaclIfMetagenerationMatch
      (\ s a -> s{_doaclIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Name of a bucket.
doaclBucket :: Lens' DefaultObjectAccessControlsList Text
doaclBucket
  = lens _doaclBucket (\ s a -> s{_doaclBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
doaclUserProject :: Lens' DefaultObjectAccessControlsList (Maybe Text)
doaclUserProject
  = lens _doaclUserProject
      (\ s a -> s{_doaclUserProject = a})

-- | If present, only return default ACL listing if the bucket\'s current
-- metageneration does not match the given value.
doaclIfMetagenerationNotMatch :: Lens' DefaultObjectAccessControlsList (Maybe Int64)
doaclIfMetagenerationNotMatch
  = lens _doaclIfMetagenerationNotMatch
      (\ s a -> s{_doaclIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
doaclProvisionalUserProject :: Lens' DefaultObjectAccessControlsList (Maybe Text)
doaclProvisionalUserProject
  = lens _doaclProvisionalUserProject
      (\ s a -> s{_doaclProvisionalUserProject = a})

instance GoogleRequest
           DefaultObjectAccessControlsList
         where
        type Rs DefaultObjectAccessControlsList =
             ObjectAccessControls
        type Scopes DefaultObjectAccessControlsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient DefaultObjectAccessControlsList'{..}
          = go _doaclBucket _doaclIfMetagenerationMatch
              _doaclUserProject
              _doaclIfMetagenerationNotMatch
              _doaclProvisionalUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DefaultObjectAccessControlsListResource)
                      mempty
