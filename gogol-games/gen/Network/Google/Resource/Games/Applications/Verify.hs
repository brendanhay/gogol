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
-- Module      : Network.Google.Resource.Games.Applications.Verify
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies the auth token provided with this request is for the
-- application with the specified ID, and returns the ID of the player it
-- was granted for.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.applications.verify@.
module Network.Google.Resource.Games.Applications.Verify
    (
    -- * REST Resource
      ApplicationsVerifyResource

    -- * Creating a Request
    , applicationsVerify
    , ApplicationsVerify

    -- * Request Lenses
    , avApplicationId
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @games.applications.verify@ method which the
-- 'ApplicationsVerify' request conforms to.
type ApplicationsVerifyResource =
     "games" :>
       "v1" :>
         "applications" :>
           Capture "applicationId" Text :>
             "verify" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ApplicationVerifyResponse

-- | Verifies the auth token provided with this request is for the
-- application with the specified ID, and returns the ID of the player it
-- was granted for.
--
-- /See:/ 'applicationsVerify' smart constructor.
newtype ApplicationsVerify = ApplicationsVerify
    { _avApplicationId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ApplicationsVerify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avApplicationId'
applicationsVerify
    :: Text -- ^ 'avApplicationId'
    -> ApplicationsVerify
applicationsVerify pAvApplicationId_ =
    ApplicationsVerify
    { _avApplicationId = pAvApplicationId_
    }

-- | The application ID from the Google Play developer console.
avApplicationId :: Lens' ApplicationsVerify Text
avApplicationId
  = lens _avApplicationId
      (\ s a -> s{_avApplicationId = a})

instance GoogleRequest ApplicationsVerify where
        type Rs ApplicationsVerify =
             ApplicationVerifyResponse
        requestClient ApplicationsVerify{..}
          = go _avApplicationId (Just AltJSON) gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy ApplicationsVerifyResource)
                      mempty
