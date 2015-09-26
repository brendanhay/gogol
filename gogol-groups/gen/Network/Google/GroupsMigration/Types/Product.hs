{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.GroupsMigration.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GroupsMigration.Types.Product where

import           Network.Google.GroupsMigration.Types.Sum
import           Network.Google.Prelude

-- | JSON response template for groups migration API.
--
-- /See:/ 'groups' smart constructor.
data Groups = Groups
    { _gKind         :: !Text
    , _gResponseCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Groups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gKind'
--
-- * 'gResponseCode'
groups
    :: Groups
groups =
    Groups
    { _gKind = "groupsmigration#groups"
    , _gResponseCode = Nothing
    }

-- | The kind of insert resource this is.
gKind :: Lens' Groups Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

-- | The status of the insert request.
gResponseCode :: Lens' Groups (Maybe Text)
gResponseCode
  = lens _gResponseCode
      (\ s a -> s{_gResponseCode = a})
