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
-- Module      : Network.Google.Resource.AdSense.AdUnits.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad units in the specified ad client for this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdUnitsList@.
module Network.Google.Resource.AdSense.AdUnits.List
    (
    -- * REST Resource
      AdUnitsListResource

    -- * Creating a Request
    , adUnitsList'
    , AdUnitsList'

    -- * Request Lenses
    , aulIncludeInactive
    , aulAdClientId
    , aulPageToken
    , aulMaxResults
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdUnitsList@ method which the
-- 'AdUnitsList'' request conforms to.
type AdUnitsListResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           QueryParam "includeInactive" Bool :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] AdUnits

-- | List all ad units in the specified ad client for this AdSense account.
--
-- /See:/ 'adUnitsList'' smart constructor.
data AdUnitsList' = AdUnitsList'
    { _aulIncludeInactive :: !(Maybe Bool)
    , _aulAdClientId      :: !Text
    , _aulPageToken       :: !(Maybe Text)
    , _aulMaxResults      :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aulIncludeInactive'
--
-- * 'aulAdClientId'
--
-- * 'aulPageToken'
--
-- * 'aulMaxResults'
adUnitsList'
    :: Text -- ^ 'adClientId'
    -> AdUnitsList'
adUnitsList' pAulAdClientId_ =
    AdUnitsList'
    { _aulIncludeInactive = Nothing
    , _aulAdClientId = pAulAdClientId_
    , _aulPageToken = Nothing
    , _aulMaxResults = Nothing
    }

-- | Whether to include inactive ad units. Default: true.
aulIncludeInactive :: Lens' AdUnitsList' (Maybe Bool)
aulIncludeInactive
  = lens _aulIncludeInactive
      (\ s a -> s{_aulIncludeInactive = a})

-- | Ad client for which to list ad units.
aulAdClientId :: Lens' AdUnitsList' Text
aulAdClientId
  = lens _aulAdClientId
      (\ s a -> s{_aulAdClientId = a})

-- | A continuation token, used to page through ad units. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aulPageToken :: Lens' AdUnitsList' (Maybe Text)
aulPageToken
  = lens _aulPageToken (\ s a -> s{_aulPageToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging.
aulMaxResults :: Lens' AdUnitsList' (Maybe Int32)
aulMaxResults
  = lens _aulMaxResults
      (\ s a -> s{_aulMaxResults = a})

instance GoogleRequest AdUnitsList' where
        type Rs AdUnitsList' = AdUnits
        requestClient AdUnitsList'{..}
          = go _aulAdClientId _aulIncludeInactive _aulPageToken
              _aulMaxResults
              (Just AltJSON)
              adSense
          where go
                  = buildClient (Proxy :: Proxy AdUnitsListResource)
                      mempty
