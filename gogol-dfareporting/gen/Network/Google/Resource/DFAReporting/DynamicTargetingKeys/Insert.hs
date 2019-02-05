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
-- Module      : Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new dynamic targeting key. Keys must be created at the
-- advertiser level before being assigned to the advertiser\'s ads,
-- creatives, or placements. There is a maximum of 1000 keys per
-- advertiser, out of which a maximum of 20 keys can be assigned per ad,
-- creative, or placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.dynamicTargetingKeys.insert@.
module Network.Google.Resource.DFAReporting.DynamicTargetingKeys.Insert
    (
    -- * REST Resource
      DynamicTargetingKeysInsertResource

    -- * Creating a Request
    , dynamicTargetingKeysInsert
    , DynamicTargetingKeysInsert

    -- * Request Lenses
    , dtkiProFileId
    , dtkiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.dynamicTargetingKeys.insert@ method which the
-- 'DynamicTargetingKeysInsert' request conforms to.
type DynamicTargetingKeysInsertResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "dynamicTargetingKeys" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] DynamicTargetingKey :>
                   Post '[JSON] DynamicTargetingKey

-- | Inserts a new dynamic targeting key. Keys must be created at the
-- advertiser level before being assigned to the advertiser\'s ads,
-- creatives, or placements. There is a maximum of 1000 keys per
-- advertiser, out of which a maximum of 20 keys can be assigned per ad,
-- creative, or placement.
--
-- /See:/ 'dynamicTargetingKeysInsert' smart constructor.
data DynamicTargetingKeysInsert = DynamicTargetingKeysInsert'
    { _dtkiProFileId :: !(Textual Int64)
    , _dtkiPayload   :: !DynamicTargetingKey
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DynamicTargetingKeysInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtkiProFileId'
--
-- * 'dtkiPayload'
dynamicTargetingKeysInsert
    :: Int64 -- ^ 'dtkiProFileId'
    -> DynamicTargetingKey -- ^ 'dtkiPayload'
    -> DynamicTargetingKeysInsert
dynamicTargetingKeysInsert pDtkiProFileId_ pDtkiPayload_ =
    DynamicTargetingKeysInsert'
    { _dtkiProFileId = _Coerce # pDtkiProFileId_
    , _dtkiPayload = pDtkiPayload_
    }

-- | User profile ID associated with this request.
dtkiProFileId :: Lens' DynamicTargetingKeysInsert Int64
dtkiProFileId
  = lens _dtkiProFileId
      (\ s a -> s{_dtkiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
dtkiPayload :: Lens' DynamicTargetingKeysInsert DynamicTargetingKey
dtkiPayload
  = lens _dtkiPayload (\ s a -> s{_dtkiPayload = a})

instance GoogleRequest DynamicTargetingKeysInsert
         where
        type Rs DynamicTargetingKeysInsert =
             DynamicTargetingKey
        type Scopes DynamicTargetingKeysInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DynamicTargetingKeysInsert'{..}
          = go _dtkiProFileId (Just AltJSON) _dtkiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DynamicTargetingKeysInsertResource)
                      mempty
