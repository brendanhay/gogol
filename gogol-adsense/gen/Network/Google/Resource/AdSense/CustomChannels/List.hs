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
-- Module      : Network.Google.Resource.AdSense.CustomChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all custom channels in the specified ad client for this AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.customchannels.list@.
module Network.Google.Resource.AdSense.CustomChannels.List
    (
    -- * REST Resource
      CustomChannelsListResource

    -- * Creating a Request
    , customChannelsList
    , CustomChannelsList

    -- * Request Lenses
    , cclAdClientId
    , cclPageToken
    , cclMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.customchannels.list@ method which the
-- 'CustomChannelsList' request conforms to.
type CustomChannelsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] CustomChannels

-- | List all custom channels in the specified ad client for this AdSense
-- account.
--
-- /See:/ 'customChannelsList' smart constructor.
data CustomChannelsList = CustomChannelsList
    { _cclAdClientId :: !Text
    , _cclPageToken  :: !(Maybe Text)
    , _cclMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cclAdClientId'
--
-- * 'cclPageToken'
--
-- * 'cclMaxResults'
customChannelsList
    :: Text -- ^ 'cclAdClientId'
    -> CustomChannelsList
customChannelsList pCclAdClientId_ =
    CustomChannelsList
    { _cclAdClientId = pCclAdClientId_
    , _cclPageToken = Nothing
    , _cclMaxResults = Nothing
    }

-- | Ad client for which to list custom channels.
cclAdClientId :: Lens' CustomChannelsList Text
cclAdClientId
  = lens _cclAdClientId
      (\ s a -> s{_cclAdClientId = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
cclPageToken :: Lens' CustomChannelsList (Maybe Text)
cclPageToken
  = lens _cclPageToken (\ s a -> s{_cclPageToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
cclMaxResults :: Lens' CustomChannelsList (Maybe Int32)
cclMaxResults
  = lens _cclMaxResults
      (\ s a -> s{_cclMaxResults = a})

instance GoogleRequest CustomChannelsList where
        type Rs CustomChannelsList = CustomChannels
        requestClient CustomChannelsList{..}
          = go _cclAdClientId _cclPageToken _cclMaxResults
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomChannelsListResource)
                      mempty
