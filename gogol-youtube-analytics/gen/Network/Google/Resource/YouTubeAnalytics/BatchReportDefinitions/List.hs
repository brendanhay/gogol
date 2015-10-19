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
-- Module      : Network.Google.Resource.YouTubeAnalytics.BatchReportDefinitions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of available batch report definitions.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsBatchReportDefinitionsList@.
module Network.Google.Resource.YouTubeAnalytics.BatchReportDefinitions.List
    (
    -- * REST Resource
      BatchReportDefinitionsListResource

    -- * Creating a Request
    , batchReportDefinitionsList'
    , BatchReportDefinitionsList'

    -- * Request Lenses
    , brdlOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsBatchReportDefinitionsList@ method which the
-- 'BatchReportDefinitionsList'' request conforms to.
type BatchReportDefinitionsListResource =
     "batchReportDefinitions" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         QueryParam "alt" AltJSON :>
           Get '[JSON] BatchReportDefinitionList

-- | Retrieves a list of available batch report definitions.
--
-- /See:/ 'batchReportDefinitionsList'' smart constructor.
newtype BatchReportDefinitionsList' = BatchReportDefinitionsList'
    { _brdlOnBehalfOfContentOwner :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportDefinitionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brdlOnBehalfOfContentOwner'
batchReportDefinitionsList'
    :: Text -- ^ 'onBehalfOfContentOwner'
    -> BatchReportDefinitionsList'
batchReportDefinitionsList' pBrdlOnBehalfOfContentOwner_ =
    BatchReportDefinitionsList'
    { _brdlOnBehalfOfContentOwner = pBrdlOnBehalfOfContentOwner_
    }

-- | The onBehalfOfContentOwner parameter identifies the content owner that
-- the user is acting on behalf of.
brdlOnBehalfOfContentOwner :: Lens' BatchReportDefinitionsList' Text
brdlOnBehalfOfContentOwner
  = lens _brdlOnBehalfOfContentOwner
      (\ s a -> s{_brdlOnBehalfOfContentOwner = a})

instance GoogleRequest BatchReportDefinitionsList'
         where
        type Rs BatchReportDefinitionsList' =
             BatchReportDefinitionList
        requestClient BatchReportDefinitionsList'{..}
          = go (Just _brdlOnBehalfOfContentOwner)
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy BatchReportDefinitionsListResource)
                      mempty
