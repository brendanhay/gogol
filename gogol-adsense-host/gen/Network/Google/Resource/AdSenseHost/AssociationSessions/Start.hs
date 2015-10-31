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
-- Module      : Network.Google.Resource.AdSenseHost.AssociationSessions.Start
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an association session for initiating an association with an
-- AdSense user.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.associationsessions.start@.
module Network.Google.Resource.AdSenseHost.AssociationSessions.Start
    (
    -- * REST Resource
      AssociationSessionsStartResource

    -- * Creating a Request
    , associationSessionsStart
    , AssociationSessionsStart

    -- * Request Lenses
    , assWebsiteLocale
    , assUserLocale
    , assWebsiteURL
    , assProductCode
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.associationsessions.start@ method which the
-- 'AssociationSessionsStart' request conforms to.
type AssociationSessionsStartResource =
     "adsensehost" :>
       "v4.1" :>
         "associationsessions" :>
           "start" :>
             QueryParams "productCode"
               AssociationSessionsStartProductCode
               :>
               QueryParam "websiteUrl" Text :>
                 QueryParam "websiteLocale" Text :>
                   QueryParam "userLocale" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] AssociationSession

-- | Create an association session for initiating an association with an
-- AdSense user.
--
-- /See:/ 'associationSessionsStart' smart constructor.
data AssociationSessionsStart = AssociationSessionsStart
    { _assWebsiteLocale :: !(Maybe Text)
    , _assUserLocale    :: !(Maybe Text)
    , _assWebsiteURL    :: !Text
    , _assProductCode   :: ![AssociationSessionsStartProductCode]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssociationSessionsStart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assWebsiteLocale'
--
-- * 'assUserLocale'
--
-- * 'assWebsiteURL'
--
-- * 'assProductCode'
associationSessionsStart
    :: Text -- ^ 'assWebsiteURL'
    -> [AssociationSessionsStartProductCode] -- ^ 'assProductCode'
    -> AssociationSessionsStart
associationSessionsStart pAssWebsiteURL_ pAssProductCode_ =
    AssociationSessionsStart
    { _assWebsiteLocale = Nothing
    , _assUserLocale = Nothing
    , _assWebsiteURL = pAssWebsiteURL_
    , _assProductCode = _Coerce # pAssProductCode_
    }

-- | The locale of the user\'s hosted website.
assWebsiteLocale :: Lens' AssociationSessionsStart (Maybe Text)
assWebsiteLocale
  = lens _assWebsiteLocale
      (\ s a -> s{_assWebsiteLocale = a})

-- | The preferred locale of the user.
assUserLocale :: Lens' AssociationSessionsStart (Maybe Text)
assUserLocale
  = lens _assUserLocale
      (\ s a -> s{_assUserLocale = a})

-- | The URL of the user\'s hosted website.
assWebsiteURL :: Lens' AssociationSessionsStart Text
assWebsiteURL
  = lens _assWebsiteURL
      (\ s a -> s{_assWebsiteURL = a})

-- | Products to associate with the user.
assProductCode :: Lens' AssociationSessionsStart [AssociationSessionsStartProductCode]
assProductCode
  = lens _assProductCode
      (\ s a -> s{_assProductCode = a})
      . _Coerce

instance GoogleRequest AssociationSessionsStart where
        type Rs AssociationSessionsStart = AssociationSession
        type Scopes AssociationSessionsStart =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AssociationSessionsStart{..}
          = go _assProductCode (Just _assWebsiteURL)
              _assWebsiteLocale
              _assUserLocale
              (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy AssociationSessionsStartResource)
                      mempty
