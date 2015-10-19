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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new event tag.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.eventTags.insert@.
module Network.Google.Resource.DFAReporting.EventTags.Insert
    (
    -- * REST Resource
      EventTagsInsertResource

    -- * Creating a Request
    , eventTagsInsert'
    , EventTagsInsert'

    -- * Request Lenses
    , etiProFileId
    , etiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.eventTags.insert@ method which the
-- 'EventTagsInsert'' request conforms to.
type EventTagsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "eventTags" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] EventTag :> Post '[JSON] EventTag

-- | Inserts a new event tag.
--
-- /See:/ 'eventTagsInsert'' smart constructor.
data EventTagsInsert' = EventTagsInsert'
    { _etiProFileId :: !Int64
    , _etiPayload   :: !EventTag
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etiProFileId'
--
-- * 'etiPayload'
eventTagsInsert'
    :: Int64 -- ^ 'etiProFileId'
    -> EventTag -- ^ 'etiPayload'
    -> EventTagsInsert'
eventTagsInsert' pEtiProFileId_ pEtiPayload_ =
    EventTagsInsert'
    { _etiProFileId = pEtiProFileId_
    , _etiPayload = pEtiPayload_
    }

-- | User profile ID associated with this request.
etiProFileId :: Lens' EventTagsInsert' Int64
etiProFileId
  = lens _etiProFileId (\ s a -> s{_etiProFileId = a})

-- | Multipart request metadata.
etiPayload :: Lens' EventTagsInsert' EventTag
etiPayload
  = lens _etiPayload (\ s a -> s{_etiPayload = a})

instance GoogleRequest EventTagsInsert' where
        type Rs EventTagsInsert' = EventTag
        requestClient EventTagsInsert'{..}
          = go _etiProFileId (Just AltJSON) _etiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy EventTagsInsertResource)
                      mempty
