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
-- Module      : Network.Google.Resource.Drive.About.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the information about the current user along with Drive API
-- settings
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveAboutGet@.
module Network.Google.Resource.Drive.About.Get
    (
    -- * REST Resource
      AboutGetResource

    -- * Creating a Request
    , aboutGet'
    , AboutGet'

    -- * Request Lenses
    , agIncludeSubscribed
    , agStartChangeId
    , agMaxChangeIdCount
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveAboutGet@ method which the
-- 'AboutGet'' request conforms to.
type AboutGetResource =
     "about" :>
       QueryParam "includeSubscribed" Bool :>
         QueryParam "startChangeId" Int64 :>
           QueryParam "maxChangeIdCount" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] About

-- | Gets the information about the current user along with Drive API
-- settings
--
-- /See:/ 'aboutGet'' smart constructor.
data AboutGet' = AboutGet'
    { _agIncludeSubscribed :: !Bool
    , _agStartChangeId     :: !(Maybe Int64)
    , _agMaxChangeIdCount  :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agIncludeSubscribed'
--
-- * 'agStartChangeId'
--
-- * 'agMaxChangeIdCount'
aboutGet'
    :: AboutGet'
aboutGet' =
    AboutGet'
    { _agIncludeSubscribed = True
    , _agStartChangeId = Nothing
    , _agMaxChangeIdCount = 1
    }

-- | When calculating the number of remaining change IDs, whether to include
-- public files the user has opened and shared files. When set to false,
-- this counts only change IDs for owned files and any shared or public
-- files that the user has explicitly added to a folder they own.
agIncludeSubscribed :: Lens' AboutGet' Bool
agIncludeSubscribed
  = lens _agIncludeSubscribed
      (\ s a -> s{_agIncludeSubscribed = a})

-- | Change ID to start counting from when calculating number of remaining
-- change IDs
agStartChangeId :: Lens' AboutGet' (Maybe Int64)
agStartChangeId
  = lens _agStartChangeId
      (\ s a -> s{_agStartChangeId = a})

-- | Maximum number of remaining change IDs to count
agMaxChangeIdCount :: Lens' AboutGet' Int64
agMaxChangeIdCount
  = lens _agMaxChangeIdCount
      (\ s a -> s{_agMaxChangeIdCount = a})

instance GoogleRequest AboutGet' where
        type Rs AboutGet' = About
        requestClient AboutGet'{..}
          = go (Just _agIncludeSubscribed) _agStartChangeId
              (Just _agMaxChangeIdCount)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy AboutGetResource)
                      mempty
