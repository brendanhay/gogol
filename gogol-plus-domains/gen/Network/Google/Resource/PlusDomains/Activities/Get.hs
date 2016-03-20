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
-- Module      : Network.Google.Resource.PlusDomains.Activities.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an activity.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.activities.get@.
module Network.Google.Resource.PlusDomains.Activities.Get
    (
    -- * REST Resource
      ActivitiesGetResource

    -- * Creating a Request
    , activitiesGet
    , ActivitiesGet

    -- * Request Lenses
    , agActivityId
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.activities.get@ method which the
-- 'ActivitiesGet' request conforms to.
type ActivitiesGetResource =
     "plusDomains" :>
       "v1" :>
         "activities" :>
           Capture "activityId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Activity

-- | Get an activity.
--
-- /See:/ 'activitiesGet' smart constructor.
newtype ActivitiesGet = ActivitiesGet
    { _agActivityId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agActivityId'
activitiesGet
    :: Text -- ^ 'agActivityId'
    -> ActivitiesGet
activitiesGet pAgActivityId_ =
    ActivitiesGet
    { _agActivityId = pAgActivityId_
    }

-- | The ID of the activity to get.
agActivityId :: Lens' ActivitiesGet Text
agActivityId
  = lens _agActivityId (\ s a -> s{_agActivityId = a})

instance GoogleRequest ActivitiesGet where
        type Rs ActivitiesGet = Activity
        requestClient ActivitiesGet{..}
          = go _agActivityId (Just AltJSON) plusDomainsService
          where go
                  = buildClient (Proxy :: Proxy ActivitiesGetResource)
                      mempty
