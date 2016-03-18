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
-- Module      : Network.Google.Resource.DFAReporting.EventTags.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing event tag.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.eventTags.delete@.
module Network.Google.Resource.DFAReporting.EventTags.Delete
    (
    -- * REST Resource
      EventTagsDeleteResource

    -- * Creating a Request
    , eventTagsDelete
    , EventTagsDelete

    -- * Request Lenses
    , etdProFileId
    , etdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.eventTags.delete@ method which the
-- 'EventTagsDelete' request conforms to.
type EventTagsDeleteResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "eventTags" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing event tag.
--
-- /See:/ 'eventTagsDelete' smart constructor.
data EventTagsDelete = EventTagsDelete
    { _etdProFileId :: !(Textual Int64)
    , _etdId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventTagsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etdProFileId'
--
-- * 'etdId'
eventTagsDelete
    :: Int64 -- ^ 'etdProFileId'
    -> Int64 -- ^ 'etdId'
    -> EventTagsDelete
eventTagsDelete pEtdProFileId_ pEtdId_ =
    EventTagsDelete
    { _etdProFileId = _Coerce # pEtdProFileId_
    , _etdId = _Coerce # pEtdId_
    }

-- | User profile ID associated with this request.
etdProFileId :: Lens' EventTagsDelete Int64
etdProFileId
  = lens _etdProFileId (\ s a -> s{_etdProFileId = a})
      . _Coerce

-- | Event tag ID.
etdId :: Lens' EventTagsDelete Int64
etdId
  = lens _etdId (\ s a -> s{_etdId = a}) . _Coerce

instance GoogleRequest EventTagsDelete where
        type Rs EventTagsDelete = ()
        requestClient EventTagsDelete{..}
          = go _etdProFileId _etdId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy EventTagsDeleteResource)
                      mempty
