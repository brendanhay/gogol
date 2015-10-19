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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one event tag by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingEventTagsGet@.
module Network.Google.Resource.DFAReporting.EventTags.Get
    (
    -- * REST Resource
      EventTagsGetResource

    -- * Creating a Request
    , eventTagsGet'
    , EventTagsGet'

    -- * Request Lenses
    , etgProFileId
    , etgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingEventTagsGet@ method which the
-- 'EventTagsGet'' request conforms to.
type EventTagsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] EventTag

-- | Gets one event tag by ID.
--
-- /See:/ 'eventTagsGet'' smart constructor.
data EventTagsGet' = EventTagsGet'
    { _etgProFileId :: !Int64
    , _etgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etgProFileId'
--
-- * 'etgId'
eventTagsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> EventTagsGet'
eventTagsGet' pEtgProFileId_ pEtgId_ =
    EventTagsGet'
    { _etgProFileId = pEtgProFileId_
    , _etgId = pEtgId_
    }

-- | User profile ID associated with this request.
etgProFileId :: Lens' EventTagsGet' Int64
etgProFileId
  = lens _etgProFileId (\ s a -> s{_etgProFileId = a})

-- | Event tag ID.
etgId :: Lens' EventTagsGet' Int64
etgId = lens _etgId (\ s a -> s{_etgId = a})

instance GoogleRequest EventTagsGet' where
        type Rs EventTagsGet' = EventTag
        requestClient EventTagsGet'{..}
          = go _etgProFileId _etgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy EventTagsGetResource)
                      mempty
