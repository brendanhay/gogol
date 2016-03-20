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
-- Module      : Network.Google.Resource.Drive.Apps.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific app.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.apps.get@.
module Network.Google.Resource.Drive.Apps.Get
    (
    -- * REST Resource
      AppsGetResource

    -- * Creating a Request
    , appsGet
    , AppsGet

    -- * Request Lenses
    , agAppId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.apps.get@ method which the
-- 'AppsGet' request conforms to.
type AppsGetResource =
     "drive" :>
       "v2" :>
         "apps" :>
           Capture "appId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] App

-- | Gets a specific app.
--
-- /See:/ 'appsGet' smart constructor.
newtype AppsGet = AppsGet
    { _agAppId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agAppId'
appsGet
    :: Text -- ^ 'agAppId'
    -> AppsGet
appsGet pAgAppId_ =
    AppsGet
    { _agAppId = pAgAppId_
    }

-- | The ID of the app.
agAppId :: Lens' AppsGet Text
agAppId = lens _agAppId (\ s a -> s{_agAppId = a})

instance GoogleRequest AppsGet where
        type Rs AppsGet = App
        requestClient AppsGet{..}
          = go _agAppId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy AppsGetResource) mempty
