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
-- Module      : Network.Google.Resource.Storage.ObjectAccessControls.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ACL entry on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.insert@.
module Network.Google.Resource.Storage.ObjectAccessControls.Insert
    (
    -- * REST Resource
      ObjectAccessControlsInsertResource

    -- * Creating a Request
    , objectAccessControlsInsert
    , ObjectAccessControlsInsert

    -- * Request Lenses
    , oaciBucket
    , oaciPayload
    , oaciObject
    , oaciGeneration
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objectAccessControls.insert@ method which the
-- 'ObjectAccessControlsInsert' request conforms to.
type ObjectAccessControlsInsertResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               Capture "object" Text :>
                 "acl" :>
                   QueryParam "generation" (JSONText Int64) :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ObjectAccessControl :>
                         Post '[JSON] ObjectAccessControl

-- | Creates a new ACL entry on the specified object.
--
-- /See:/ 'objectAccessControlsInsert' smart constructor.
data ObjectAccessControlsInsert = ObjectAccessControlsInsert
    { _oaciBucket     :: !Text
    , _oaciPayload    :: !ObjectAccessControl
    , _oaciObject     :: !Text
    , _oaciGeneration :: !(Maybe (JSONText Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectAccessControlsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaciBucket'
--
-- * 'oaciPayload'
--
-- * 'oaciObject'
--
-- * 'oaciGeneration'
objectAccessControlsInsert
    :: Text -- ^ 'oaciBucket'
    -> ObjectAccessControl -- ^ 'oaciPayload'
    -> Text -- ^ 'oaciObject'
    -> ObjectAccessControlsInsert
objectAccessControlsInsert pOaciBucket_ pOaciPayload_ pOaciObject_ =
    ObjectAccessControlsInsert
    { _oaciBucket = pOaciBucket_
    , _oaciPayload = pOaciPayload_
    , _oaciObject = pOaciObject_
    , _oaciGeneration = Nothing
    }

-- | Name of a bucket.
oaciBucket :: Lens' ObjectAccessControlsInsert Text
oaciBucket
  = lens _oaciBucket (\ s a -> s{_oaciBucket = a})

-- | Multipart request metadata.
oaciPayload :: Lens' ObjectAccessControlsInsert ObjectAccessControl
oaciPayload
  = lens _oaciPayload (\ s a -> s{_oaciPayload = a})

-- | Name of the object. For information about how to URL encode object names
-- to be path safe, see Encoding URI Path Parts.
oaciObject :: Lens' ObjectAccessControlsInsert Text
oaciObject
  = lens _oaciObject (\ s a -> s{_oaciObject = a})

-- | If present, selects a specific revision of this object (as opposed to
-- the latest version, the default).
oaciGeneration :: Lens' ObjectAccessControlsInsert (Maybe Int64)
oaciGeneration
  = lens _oaciGeneration
      (\ s a -> s{_oaciGeneration = a})
      . mapping _Coerce

instance GoogleRequest ObjectAccessControlsInsert
         where
        type Rs ObjectAccessControlsInsert =
             ObjectAccessControl
        requestClient ObjectAccessControlsInsert{..}
          = go _oaciBucket _oaciObject _oaciGeneration
              (Just AltJSON)
              _oaciPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectAccessControlsInsertResource)
                      mempty
