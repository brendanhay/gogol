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
-- Module      : Network.Google.Resource.Autoscaler.Autoscalers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Autoscaler resources in this zone.
--
-- /See:/ <http://developers.google.com/compute/docs/autoscaler Google Compute Engine Autoscaler API Reference> for @autoscaler.autoscalers.list@.
module Network.Google.Resource.Autoscaler.Autoscalers.List
    (
    -- * REST Resource
      AutoscalersListResource

    -- * Creating a Request
    , autoscalersList
    , AutoscalersList

    -- * Request Lenses
    , alProject
    , alZone
    , alFilter
    , alPageToken
    , alMaxResults
    ) where

import           Network.Google.Autoscaler.Types
import           Network.Google.Prelude

-- | A resource alias for @autoscaler.autoscalers.list@ method which the
-- 'AutoscalersList' request conforms to.
type AutoscalersListResource =
     "autoscaler" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "autoscalers" :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AutoscalerListResponse

-- | Lists all Autoscaler resources in this zone.
--
-- /See:/ 'autoscalersList' smart constructor.
data AutoscalersList = AutoscalersList
    { _alProject    :: !Text
    , _alZone       :: !Text
    , _alFilter     :: !(Maybe Text)
    , _alPageToken  :: !(Maybe Text)
    , _alMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alProject'
--
-- * 'alZone'
--
-- * 'alFilter'
--
-- * 'alPageToken'
--
-- * 'alMaxResults'
autoscalersList
    :: Text -- ^ 'alProject'
    -> Text -- ^ 'alZone'
    -> AutoscalersList
autoscalersList pAlProject_ pAlZone_ =
    AutoscalersList
    { _alProject = pAlProject_
    , _alZone = pAlZone_
    , _alFilter = Nothing
    , _alPageToken = Nothing
    , _alMaxResults = 500
    }

-- | Project ID of Autoscaler resource.
alProject :: Lens' AutoscalersList Text
alProject
  = lens _alProject (\ s a -> s{_alProject = a})

-- | Zone name of Autoscaler resource.
alZone :: Lens' AutoscalersList Text
alZone = lens _alZone (\ s a -> s{_alZone = a})

alFilter :: Lens' AutoscalersList (Maybe Text)
alFilter = lens _alFilter (\ s a -> s{_alFilter = a})

alPageToken :: Lens' AutoscalersList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

alMaxResults :: Lens' AutoscalersList Word32
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . _Coerce

instance GoogleRequest AutoscalersList where
        type Rs AutoscalersList = AutoscalerListResponse
        requestClient AutoscalersList{..}
          = go _alProject _alZone _alFilter _alPageToken
              (Just _alMaxResults)
              (Just AltJSON)
              autoscalerService
          where go
                  = buildClient
                      (Proxy :: Proxy AutoscalersListResource)
                      mempty
