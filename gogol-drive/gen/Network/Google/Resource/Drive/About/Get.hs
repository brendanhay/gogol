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
-- Gets information about the user, the user\'s Drive, and system
-- capabilities.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.about.get@.
module Network.Google.Resource.Drive.About.Get
    (
    -- * REST Resource
      AboutGetResource

    -- * Creating a Request
    , aboutGet
    , AboutGet

    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.about.get@ method which the
-- 'AboutGet' request conforms to.
type AboutGetResource =
     "drive" :>
       "v3" :>
         "about" :>
           QueryParam "alt" AltJSON :> Get '[JSON] About

-- | Gets information about the user, the user\'s Drive, and system
-- capabilities.
--
-- /See:/ 'aboutGet' smart constructor.
data AboutGet =
    AboutGet
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AboutGet' with the minimum fields required to make a request.
--
aboutGet
    :: AboutGet
aboutGet = AboutGet

instance GoogleRequest AboutGet where
        type Rs AboutGet = About
        requestClient AboutGet{}
          = go (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy AboutGetResource)
                      mempty
