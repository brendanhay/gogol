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
-- Module      : Network.Google.Resource.AdSense.AdUnits.CustomChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all custom channels which the specified ad unit belongs to.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.adunits.customchannels.list@.
module Network.Google.Resource.AdSense.AdUnits.CustomChannels.List
    (
    -- * REST Resource
      AdUnitsCustomChannelsListResource

    -- * Creating a Request
    , adUnitsCustomChannelsList
    , AdUnitsCustomChannelsList

    -- * Request Lenses
    , aucclAdUnitId
    , aucclAdClientId
    , aucclPageToken
    , aucclMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.adunits.customchannels.list@ method which the
-- 'AdUnitsCustomChannelsList' request conforms to.
type AdUnitsCustomChannelsListResource =
     "adsense" :>
       "v1.4" :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 "customchannels" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] CustomChannels

-- | List all custom channels which the specified ad unit belongs to.
--
-- /See:/ 'adUnitsCustomChannelsList' smart constructor.
data AdUnitsCustomChannelsList = AdUnitsCustomChannelsList
    { _aucclAdUnitId   :: !Text
    , _aucclAdClientId :: !Text
    , _aucclPageToken  :: !(Maybe Text)
    , _aucclMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitsCustomChannelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aucclAdUnitId'
--
-- * 'aucclAdClientId'
--
-- * 'aucclPageToken'
--
-- * 'aucclMaxResults'
adUnitsCustomChannelsList
    :: Text -- ^ 'aucclAdUnitId'
    -> Text -- ^ 'aucclAdClientId'
    -> AdUnitsCustomChannelsList
adUnitsCustomChannelsList pAucclAdUnitId_ pAucclAdClientId_ =
    AdUnitsCustomChannelsList
    { _aucclAdUnitId = pAucclAdUnitId_
    , _aucclAdClientId = pAucclAdClientId_
    , _aucclPageToken = Nothing
    , _aucclMaxResults = Nothing
    }

-- | Ad unit for which to list custom channels.
aucclAdUnitId :: Lens' AdUnitsCustomChannelsList Text
aucclAdUnitId
  = lens _aucclAdUnitId
      (\ s a -> s{_aucclAdUnitId = a})

-- | Ad client which contains the ad unit.
aucclAdClientId :: Lens' AdUnitsCustomChannelsList Text
aucclAdClientId
  = lens _aucclAdClientId
      (\ s a -> s{_aucclAdClientId = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
aucclPageToken :: Lens' AdUnitsCustomChannelsList (Maybe Text)
aucclPageToken
  = lens _aucclPageToken
      (\ s a -> s{_aucclPageToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
aucclMaxResults :: Lens' AdUnitsCustomChannelsList (Maybe Int32)
aucclMaxResults
  = lens _aucclMaxResults
      (\ s a -> s{_aucclMaxResults = a})

instance GoogleRequest AdUnitsCustomChannelsList
         where
        type Rs AdUnitsCustomChannelsList = CustomChannels
        requestClient AdUnitsCustomChannelsList{..}
          = go _aucclAdClientId _aucclAdUnitId _aucclPageToken
              _aucclMaxResults
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AdUnitsCustomChannelsListResource)
                      mempty
