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
-- Module      : Network.Google.Resource.DFAReporting.DynamicTargetingKeys.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of dynamic targeting keys.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.dynamicTargetingKeys.list@.
module Network.Google.Resource.DFAReporting.DynamicTargetingKeys.List
    (
    -- * REST Resource
      DynamicTargetingKeysListResource

    -- * Creating a Request
    , dynamicTargetingKeysList
    , DynamicTargetingKeysList

    -- * Request Lenses
    , dtklObjectType
    , dtklAdvertiserId
    , dtklObjectId
    , dtklProFileId
    , dtklNames
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.dynamicTargetingKeys.list@ method which the
-- 'DynamicTargetingKeysList' request conforms to.
type DynamicTargetingKeysListResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "dynamicTargetingKeys" :>
               QueryParam "objectType"
                 DynamicTargetingKeysListObjectType
                 :>
                 QueryParam "advertiserId" (Textual Int64) :>
                   QueryParam "objectId" (Textual Int64) :>
                     QueryParams "names" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] DynamicTargetingKeysListResponse

-- | Retrieves a list of dynamic targeting keys.
--
-- /See:/ 'dynamicTargetingKeysList' smart constructor.
data DynamicTargetingKeysList = DynamicTargetingKeysList'
    { _dtklObjectType   :: !(Maybe DynamicTargetingKeysListObjectType)
    , _dtklAdvertiserId :: !(Maybe (Textual Int64))
    , _dtklObjectId     :: !(Maybe (Textual Int64))
    , _dtklProFileId    :: !(Textual Int64)
    , _dtklNames        :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DynamicTargetingKeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtklObjectType'
--
-- * 'dtklAdvertiserId'
--
-- * 'dtklObjectId'
--
-- * 'dtklProFileId'
--
-- * 'dtklNames'
dynamicTargetingKeysList
    :: Int64 -- ^ 'dtklProFileId'
    -> DynamicTargetingKeysList
dynamicTargetingKeysList pDtklProFileId_ =
    DynamicTargetingKeysList'
    { _dtklObjectType = Nothing
    , _dtklAdvertiserId = Nothing
    , _dtklObjectId = Nothing
    , _dtklProFileId = _Coerce # pDtklProFileId_
    , _dtklNames = Nothing
    }

-- | Select only dynamic targeting keys with this object type.
dtklObjectType :: Lens' DynamicTargetingKeysList (Maybe DynamicTargetingKeysListObjectType)
dtklObjectType
  = lens _dtklObjectType
      (\ s a -> s{_dtklObjectType = a})

-- | Select only dynamic targeting keys whose object has this advertiser ID.
dtklAdvertiserId :: Lens' DynamicTargetingKeysList (Maybe Int64)
dtklAdvertiserId
  = lens _dtklAdvertiserId
      (\ s a -> s{_dtklAdvertiserId = a})
      . mapping _Coerce

-- | Select only dynamic targeting keys with this object ID.
dtklObjectId :: Lens' DynamicTargetingKeysList (Maybe Int64)
dtklObjectId
  = lens _dtklObjectId (\ s a -> s{_dtklObjectId = a})
      . mapping _Coerce

-- | User profile ID associated with this request.
dtklProFileId :: Lens' DynamicTargetingKeysList Int64
dtklProFileId
  = lens _dtklProFileId
      (\ s a -> s{_dtklProFileId = a})
      . _Coerce

-- | Select only dynamic targeting keys exactly matching these names.
dtklNames :: Lens' DynamicTargetingKeysList [Text]
dtklNames
  = lens _dtklNames (\ s a -> s{_dtklNames = a}) .
      _Default
      . _Coerce

instance GoogleRequest DynamicTargetingKeysList where
        type Rs DynamicTargetingKeysList =
             DynamicTargetingKeysListResponse
        type Scopes DynamicTargetingKeysList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DynamicTargetingKeysList'{..}
          = go _dtklProFileId _dtklObjectType _dtklAdvertiserId
              _dtklObjectId
              (_dtklNames ^. _Default)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DynamicTargetingKeysListResource)
                      mempty
