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
-- Module      : Network.Google.Resource.AdSense.URLChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all URL channels in the specified ad client for this AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseURLChannelsList@.
module Network.Google.Resource.AdSense.URLChannels.List
    (
    -- * REST Resource
      URLChannelsListResource

    -- * Creating a Request
    , urlChannelsList'
    , URLChannelsList'

    -- * Request Lenses
    , uclAdClientId
    , uclPageToken
    , uclMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseURLChannelsList@ method which the
-- 'URLChannelsList'' request conforms to.
type URLChannelsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "urlchannels" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "alt" AltJSON :> Get '[JSON] URLChannels

-- | List all URL channels in the specified ad client for this AdSense
-- account.
--
-- /See:/ 'urlChannelsList'' smart constructor.
data URLChannelsList' = URLChannelsList'
    { _uclAdClientId :: !Text
    , _uclPageToken  :: !(Maybe Text)
    , _uclMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uclAdClientId'
--
-- * 'uclPageToken'
--
-- * 'uclMaxResults'
urlChannelsList'
    :: Text -- ^ 'adClientId'
    -> URLChannelsList'
urlChannelsList' pUclAdClientId_ =
    URLChannelsList'
    { _uclAdClientId = pUclAdClientId_
    , _uclPageToken = Nothing
    , _uclMaxResults = Nothing
    }

-- | Ad client for which to list URL channels.
uclAdClientId :: Lens' URLChannelsList' Text
uclAdClientId
  = lens _uclAdClientId
      (\ s a -> s{_uclAdClientId = a})

-- | A continuation token, used to page through URL channels. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
uclPageToken :: Lens' URLChannelsList' (Maybe Text)
uclPageToken
  = lens _uclPageToken (\ s a -> s{_uclPageToken = a})

-- | The maximum number of URL channels to include in the response, used for
-- paging.
uclMaxResults :: Lens' URLChannelsList' (Maybe Int32)
uclMaxResults
  = lens _uclMaxResults
      (\ s a -> s{_uclMaxResults = a})

instance GoogleRequest URLChannelsList' where
        type Rs URLChannelsList' = URLChannels
        requestClient URLChannelsList'{..}
          = go _uclAdClientId _uclPageToken _uclMaxResults
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy URLChannelsListResource)
                      mempty
