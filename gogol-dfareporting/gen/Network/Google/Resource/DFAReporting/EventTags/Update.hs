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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing event tag.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.eventTags.update@.
module Network.Google.Resource.DFAReporting.EventTags.Update
    (
    -- * REST Resource
      EventTagsUpdateResource

    -- * Creating a Request
    , eventTagsUpdate
    , EventTagsUpdate

    -- * Request Lenses
    , etuProFileId
    , etuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.eventTags.update@ method which the
-- 'EventTagsUpdate' request conforms to.
type EventTagsUpdateResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (JSONText Int64) :>
             "eventTags" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] EventTag :> Put '[JSON] EventTag

-- | Updates an existing event tag.
--
-- /See:/ 'eventTagsUpdate' smart constructor.
data EventTagsUpdate = EventTagsUpdate
    { _etuProFileId :: !(JSONText Int64)
    , _etuPayload   :: !EventTag
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etuProFileId'
--
-- * 'etuPayload'
eventTagsUpdate
    :: Int64 -- ^ 'etuProFileId'
    -> EventTag -- ^ 'etuPayload'
    -> EventTagsUpdate
eventTagsUpdate pEtuProFileId_ pEtuPayload_ =
    EventTagsUpdate
    { _etuProFileId = _Coerce # pEtuProFileId_
    , _etuPayload = pEtuPayload_
    }

-- | User profile ID associated with this request.
etuProFileId :: Lens' EventTagsUpdate Int64
etuProFileId
  = lens _etuProFileId (\ s a -> s{_etuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
etuPayload :: Lens' EventTagsUpdate EventTag
etuPayload
  = lens _etuPayload (\ s a -> s{_etuPayload = a})

instance GoogleRequest EventTagsUpdate where
        type Rs EventTagsUpdate = EventTag
        requestClient EventTagsUpdate{..}
          = go _etuProFileId (Just AltJSON) _etuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy EventTagsUpdateResource)
                      mempty
