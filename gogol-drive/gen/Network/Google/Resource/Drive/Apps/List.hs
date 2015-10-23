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
-- Module      : Network.Google.Resource.Drive.Apps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a user\'s installed apps.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.apps.list@.
module Network.Google.Resource.Drive.Apps.List
    (
    -- * REST Resource
      AppsListResource

    -- * Creating a Request
    , appsList
    , AppsList

    -- * Request Lenses
    , alLanguageCode
    , alAppFilterExtensions
    , alAppFilterMimeTypes
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.apps.list@ method which the
-- 'AppsList' request conforms to.
type AppsListResource =
     "drive" :>
       "v2" :>
         "apps" :>
           QueryParam "languageCode" Text :>
             QueryParam "appFilterExtensions" Text :>
               QueryParam "appFilterMimeTypes" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] AppList

-- | Lists a user\'s installed apps.
--
-- /See:/ 'appsList' smart constructor.
data AppsList = AppsList
    { _alLanguageCode        :: !(Maybe Text)
    , _alAppFilterExtensions :: !Text
    , _alAppFilterMimeTypes  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alLanguageCode'
--
-- * 'alAppFilterExtensions'
--
-- * 'alAppFilterMimeTypes'
appsList
    :: AppsList
appsList =
    AppsList
    { _alLanguageCode = Nothing
    , _alAppFilterExtensions = ""
    , _alAppFilterMimeTypes = ""
    }

-- | A language or locale code, as defined by BCP 47, with some extensions
-- from Unicode\'s LDML format (http:\/\/www.unicode.org\/reports\/tr35\/).
alLanguageCode :: Lens' AppsList (Maybe Text)
alLanguageCode
  = lens _alLanguageCode
      (\ s a -> s{_alLanguageCode = a})

-- | A comma-separated list of file extensions for open with filtering. All
-- apps within the given app query scope which can open any of the given
-- file extensions will be included in the response. If appFilterMimeTypes
-- are provided as well, the result is a union of the two resulting app
-- lists.
alAppFilterExtensions :: Lens' AppsList Text
alAppFilterExtensions
  = lens _alAppFilterExtensions
      (\ s a -> s{_alAppFilterExtensions = a})

-- | A comma-separated list of MIME types for open with filtering. All apps
-- within the given app query scope which can open any of the given MIME
-- types will be included in the response. If appFilterExtensions are
-- provided as well, the result is a union of the two resulting app lists.
alAppFilterMimeTypes :: Lens' AppsList Text
alAppFilterMimeTypes
  = lens _alAppFilterMimeTypes
      (\ s a -> s{_alAppFilterMimeTypes = a})

instance GoogleRequest AppsList where
        type Rs AppsList = AppList
        requestClient AppsList{..}
          = go _alLanguageCode (Just _alAppFilterExtensions)
              (Just _alAppFilterMimeTypes)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy AppsListResource)
                      mempty
