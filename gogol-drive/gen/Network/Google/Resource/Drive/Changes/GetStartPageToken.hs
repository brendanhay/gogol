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
-- Module      : Network.Google.Resource.Drive.Changes.GetStartPageToken
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the starting pageToken for listing future changes.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.changes.getStartPageToken@.
module Network.Google.Resource.Drive.Changes.GetStartPageToken
    (
    -- * REST Resource
      ChangesGetStartPageTokenResource

    -- * Creating a Request
    , changesGetStartPageToken
    , ChangesGetStartPageToken

    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.changes.getStartPageToken@ method which the
-- 'ChangesGetStartPageToken' request conforms to.
type ChangesGetStartPageTokenResource =
     "drive" :>
       "v3" :>
         "changes" :>
           "startPageToken" :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] StartPageToken

-- | Gets the starting pageToken for listing future changes.
--
-- /See:/ 'changesGetStartPageToken' smart constructor.
data ChangesGetStartPageToken =
    ChangesGetStartPageToken
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesGetStartPageToken' with the minimum fields required to make a request.
--
changesGetStartPageToken
    :: ChangesGetStartPageToken
changesGetStartPageToken = ChangesGetStartPageToken

instance GoogleRequest ChangesGetStartPageToken where
        type Rs ChangesGetStartPageToken = StartPageToken
        requestClient ChangesGetStartPageToken{}
          = go (Just AltJSON) driveService
          where go
                  = buildClient
                      (Proxy :: Proxy ChangesGetStartPageTokenResource)
                      mempty
