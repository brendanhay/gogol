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
-- Module      : Network.Google.Resource.PlusDomains.Activities.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new activity for the authenticated user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.activities.insert@.
module Network.Google.Resource.PlusDomains.Activities.Insert
    (
    -- * REST Resource
      ActivitiesInsertResource

    -- * Creating a Request
    , activitiesInsert
    , ActivitiesInsert

    -- * Request Lenses
    , aiPayload
    , aiUserId
    , aiPreview
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @plusDomains.activities.insert@ method which the
-- 'ActivitiesInsert' request conforms to.
type ActivitiesInsertResource =
     "plusDomains" :>
       "v1" :>
         "people" :>
           Capture "userId" Text :>
             "activities" :>
               QueryParam "preview" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Activity :> Post '[JSON] Activity

-- | Create a new activity for the authenticated user.
--
-- /See:/ 'activitiesInsert' smart constructor.
data ActivitiesInsert = ActivitiesInsert'
    { _aiPayload :: !Activity
    , _aiUserId  :: !Text
    , _aiPreview :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiPayload'
--
-- * 'aiUserId'
--
-- * 'aiPreview'
activitiesInsert
    :: Activity -- ^ 'aiPayload'
    -> Text -- ^ 'aiUserId'
    -> ActivitiesInsert
activitiesInsert pAiPayload_ pAiUserId_ =
    ActivitiesInsert'
    { _aiPayload = pAiPayload_
    , _aiUserId = pAiUserId_
    , _aiPreview = Nothing
    }

-- | Multipart request metadata.
aiPayload :: Lens' ActivitiesInsert Activity
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | The ID of the user to create the activity on behalf of. Its value should
-- be \"me\", to indicate the authenticated user.
aiUserId :: Lens' ActivitiesInsert Text
aiUserId = lens _aiUserId (\ s a -> s{_aiUserId = a})

-- | If \"true\", extract the potential media attachments for a URL. The
-- response will include all possible attachments for a URL, including
-- video, photos, and articles based on the content of the page.
aiPreview :: Lens' ActivitiesInsert (Maybe Bool)
aiPreview
  = lens _aiPreview (\ s a -> s{_aiPreview = a})

instance GoogleRequest ActivitiesInsert where
        type Rs ActivitiesInsert = Activity
        type Scopes ActivitiesInsert =
             '["https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/plus.me",
               "https://www.googleapis.com/auth/plus.stream.write"]
        requestClient ActivitiesInsert'{..}
          = go _aiUserId _aiPreview (Just AltJSON) _aiPayload
              plusDomainsService
          where go
                  = buildClient
                      (Proxy :: Proxy ActivitiesInsertResource)
                      mempty
