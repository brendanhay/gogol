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
-- Module      : Network.Google.Resource.Plus.Moments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the moments for a particular user.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.moments.list@.
module Network.Google.Resource.Plus.Moments.List
    (
    -- * REST Resource
      MomentsListResource

    -- * Creating a Request
    , momentsList'
    , MomentsList'

    -- * Request Lenses
    , mlTargetURL
    , mlCollection
    , mlUserId
    , mlPageToken
    , mlType
    , mlMaxResults
    ) where

import           Network.Google.Plus.Types
import           Network.Google.Prelude

-- | A resource alias for @plus.moments.list@ method which the
-- 'MomentsList'' request conforms to.
type MomentsListResource =
     "people" :>
       Capture "userId" Text :>
         "moments" :>
           Capture "collection" MomentsListCollection :>
             QueryParam "targetUrl" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "type" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] MomentsFeed

-- | List all of the moments for a particular user.
--
-- /See:/ 'momentsList'' smart constructor.
data MomentsList' = MomentsList'
    { _mlTargetURL  :: !(Maybe Text)
    , _mlCollection :: !MomentsListCollection
    , _mlUserId     :: !Text
    , _mlPageToken  :: !(Maybe Text)
    , _mlType       :: !(Maybe Text)
    , _mlMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MomentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlTargetURL'
--
-- * 'mlCollection'
--
-- * 'mlUserId'
--
-- * 'mlPageToken'
--
-- * 'mlType'
--
-- * 'mlMaxResults'
momentsList'
    :: MomentsListCollection -- ^ 'mlCollection'
    -> Text -- ^ 'mlUserId'
    -> MomentsList'
momentsList' pMlCollection_ pMlUserId_ =
    MomentsList'
    { _mlTargetURL = Nothing
    , _mlCollection = pMlCollection_
    , _mlUserId = pMlUserId_
    , _mlPageToken = Nothing
    , _mlType = Nothing
    , _mlMaxResults = 20
    }

-- | Only moments containing this targetUrl will be returned.
mlTargetURL :: Lens' MomentsList' (Maybe Text)
mlTargetURL
  = lens _mlTargetURL (\ s a -> s{_mlTargetURL = a})

-- | The collection of moments to list.
mlCollection :: Lens' MomentsList' MomentsListCollection
mlCollection
  = lens _mlCollection (\ s a -> s{_mlCollection = a})

-- | The ID of the user to get moments for. The special value \"me\" can be
-- used to indicate the authenticated user.
mlUserId :: Lens' MomentsList' Text
mlUserId = lens _mlUserId (\ s a -> s{_mlUserId = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
mlPageToken :: Lens' MomentsList' (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | Only moments of this type will be returned.
mlType :: Lens' MomentsList' (Maybe Text)
mlType = lens _mlType (\ s a -> s{_mlType = a})

-- | The maximum number of moments to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
mlMaxResults :: Lens' MomentsList' Word32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})

instance GoogleRequest MomentsList' where
        type Rs MomentsList' = MomentsFeed
        requestClient MomentsList'{..}
          = go _mlUserId _mlCollection _mlTargetURL
              _mlPageToken
              _mlType
              (Just _mlMaxResults)
              (Just AltJSON)
              plusService
          where go
                  = buildClient (Proxy :: Proxy MomentsListResource)
                      mempty
