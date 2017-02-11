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
-- Module      : Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing dynamic targeting key.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.dynamicTargetingKeys.delete@.
module Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Delete
    (
    -- * REST Resource
      DynamicTargetingKeysDeleteResource

    -- * Creating a Request
    , dynamicTargetingKeysDelete
    , DynamicTargetingKeysDelete

    -- * Request Lenses
    , dtkdObjectType
    , dtkdObjectId
    , dtkdProFileId
    , dtkdName
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.dynamicTargetingKeys.delete@ method which the
-- 'DynamicTargetingKeysDelete' request conforms to.
type DynamicTargetingKeysDeleteResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "dynamicTargetingKeys" :>
               Capture "objectId" (Textual Int64) :>
                 QueryParam "name" Text :>
                   QueryParam "objectType"
                     DynamicTargetingKeysDeleteObjectType
                     :> QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing dynamic targeting key.
--
-- /See:/ 'dynamicTargetingKeysDelete' smart constructor.
data DynamicTargetingKeysDelete = DynamicTargetingKeysDelete'
    { _dtkdObjectType :: !DynamicTargetingKeysDeleteObjectType
    , _dtkdObjectId   :: !(Textual Int64)
    , _dtkdProFileId  :: !(Textual Int64)
    , _dtkdName       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DynamicTargetingKeysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtkdObjectType'
--
-- * 'dtkdObjectId'
--
-- * 'dtkdProFileId'
--
-- * 'dtkdName'
dynamicTargetingKeysDelete
    :: DynamicTargetingKeysDeleteObjectType -- ^ 'dtkdObjectType'
    -> Int64 -- ^ 'dtkdObjectId'
    -> Int64 -- ^ 'dtkdProFileId'
    -> Text -- ^ 'dtkdName'
    -> DynamicTargetingKeysDelete
dynamicTargetingKeysDelete pDtkdObjectType_ pDtkdObjectId_ pDtkdProFileId_ pDtkdName_ =
    DynamicTargetingKeysDelete'
    { _dtkdObjectType = pDtkdObjectType_
    , _dtkdObjectId = _Coerce # pDtkdObjectId_
    , _dtkdProFileId = _Coerce # pDtkdProFileId_
    , _dtkdName = pDtkdName_
    }

-- | Type of the object of this dynamic targeting key. This is a required
-- field.
dtkdObjectType :: Lens' DynamicTargetingKeysDelete DynamicTargetingKeysDeleteObjectType
dtkdObjectType
  = lens _dtkdObjectType
      (\ s a -> s{_dtkdObjectType = a})

-- | ID of the object of this dynamic targeting key. This is a required
-- field.
dtkdObjectId :: Lens' DynamicTargetingKeysDelete Int64
dtkdObjectId
  = lens _dtkdObjectId (\ s a -> s{_dtkdObjectId = a})
      . _Coerce

-- | User profile ID associated with this request.
dtkdProFileId :: Lens' DynamicTargetingKeysDelete Int64
dtkdProFileId
  = lens _dtkdProFileId
      (\ s a -> s{_dtkdProFileId = a})
      . _Coerce

-- | Name of this dynamic targeting key. This is a required field. Must be
-- less than 256 characters long and cannot contain commas. All characters
-- are converted to lowercase.
dtkdName :: Lens' DynamicTargetingKeysDelete Text
dtkdName = lens _dtkdName (\ s a -> s{_dtkdName = a})

instance GoogleRequest DynamicTargetingKeysDelete
         where
        type Rs DynamicTargetingKeysDelete = ()
        type Scopes DynamicTargetingKeysDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DynamicTargetingKeysDelete'{..}
          = go _dtkdProFileId _dtkdObjectId (Just _dtkdName)
              (Just _dtkdObjectType)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DynamicTargetingKeysDeleteResource)
                      mempty
